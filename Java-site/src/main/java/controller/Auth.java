package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Company;
import models.CompanyAdministraion;
import services.AuthServise;
import services.DocumentService;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.time.Instant;

import org.json.JSONArray;
import org.json.JSONObject;
import org.mindrot.jbcrypt.BCrypt;



public class Auth extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static String companyId = null;
	
    public Auth() {
        super();
    }
    
	
//=========================================================================================
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String page = request.getParameter("page");
		switch(page) {
			case "signin":
				loadSigninPage(request, response);
			break;
			case "signup":
				loadSignupPage(request, response);
			break;
		}
	}
	
	protected void loadSigninPage(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setAttribute("title", "Вхід");
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/signin_admin.jsp");
		dispatcher.forward(request, response);
	}

	protected void loadSignupPage(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setAttribute("title", "Реєстрація");
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/signup_company.jsp");
		dispatcher.forward(request, response);
	}
	//==========================================================================================
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String page = request.getParameter("page");
		switch(page) {
			case "signup_company":
				RegistrationCompany( request,  response);
			break;
			
			case "signup_company_admin":
				RegistrationAdminCompany( request,  response);
			break;
			case "signin_admin":
				AuthorizationAdminCompany(request, response);
			break;
		}
	}
	
	protected void RegistrationCompany(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String city = request.getParameter("city");
		String street_hous = request.getParameter("street_hous");
		
		Company admin = new Company(
				name,
				description,
				city,
				street_hous,
				GetLocationAddress(street_hous , city),
				5,
				Instant.now());
		
		companyId = AuthServise.RegistrationCompany(admin);
		if(companyId == null ) {
			
			request.setAttribute("title", "Error");
			request.setAttribute("messageError", "Реєстрація компанії провалена(");
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/page403.jsp");
			dispatcher.forward(request, response);
			
		}else{
			
			request.setAttribute("title", "Реєстрація адміністратора");
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/signup_company_administration.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	protected void RegistrationAdminCompany(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String hashPassw = BCrypt.hashpw(request.getParameter("pass1"), BCrypt.gensalt());
		CompanyAdministraion newAdmin = new CompanyAdministraion(
				request.getParameter("name"),
				request.getParameter("email"),
				"0",
				request.getParameter("phone"),
				hashPassw,
				"https:\\Users\\photo",
				companyId);
		
		if(DocumentService.Add(newAdmin, "CompanyAdministrators")) {
			
			request.setAttribute("title", "Підтвердження реєстрації");
			request.setAttribute("message", "Адміністратор успішно доданий");
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/signin_admin.jsp");
			dispatcher.forward(request, response);
			
		}else{
			
			request.setAttribute("title", "Error");
			request.setAttribute("messageError", "Реєстрація адміністратора провалена");
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/page403.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	protected void AuthorizationAdminCompany(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("login");
		String hashPassw = request.getParameter("pass1");
		//String remember = request.getParameter("remember");
		
		CompanyAdministraion  admin = AuthServise.Authorization("CompanyAdministrators", email, hashPassw, CompanyAdministraion.class);
		if(admin != null) {
			
			request.setAttribute("title", "Підтвердження реєстрації");
			request.setAttribute("message", "Авторизація пройшла успішно)");
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/page_res.jsp");
			dispatcher.forward(request, response);
			
		}else {
			
			request.setAttribute("title", "Error");
			request.setAttribute("messageError", "Авторизація провалена(");
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/page403.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	//===Додаткові методи=======================================================================================================
	
	// Повернення координат ширини та висоти за адресою
	private String GetLocationAddress(String street_hous, String city) {
		String location = null;
		
		try {
			
			String url = "https://nominatim.openstreetmap.org/search?q=" + URLEncoder.encode(street_hous + "," + city, "UTF-8")  + "&format=json";
			
            // 1. Зтягнули дані з web-сервера
            HttpURLConnection con = (HttpURLConnection) new URL(url).openConnection();
            con.setRequestMethod("GET");
            
           
            BufferedReader readLocation = new BufferedReader(new InputStreamReader(con.getInputStream()));
            StringBuilder response = new StringBuilder();
            String line;
            while ((line = readLocation .readLine()) != null) {
                response.append(line);
            }
            readLocation.close();
            con.disconnect();
            
           // 2. Попарсили, дістали локацію
            String jsonStr = response.toString();
            JSONArray jsonArray = new JSONArray(jsonStr);
            
            if (jsonArray.length() > 0) {
                JSONObject firstObject = jsonArray.getJSONObject(0);
                location = firstObject.getString("lat") + "," + firstObject.getString("lon");
                
            } else {
                return null;
            }
            
        } catch (Exception e) {
            return null;
        }
		return location;
	}
}
