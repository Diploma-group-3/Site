package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Company;
import models.CompanyAdministraion;
import services.AuthServise;
import services.DocumentService;
import services.EmailService;
import services.LocationService;

import java.io.IOException;
import java.time.Instant;
import java.util.ArrayList;

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
			case "confirm":
				String email = request.getParameter("email");
				loadConfirmPage(request, response, email);
				break;
			case "signout":
				doSignoutAction(request, response);
				break;
		}
	}
	
	private void loadSigninPage(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setAttribute("title", "Вхід");
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/signin_admin.jsp");
		dispatcher.forward(request, response);
	}

	private void loadSignupPage(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setAttribute("title", "Реєстрація");
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/signup_company.jsp");
		dispatcher.forward(request, response);
	}
	
	private void loadConfirmPage(HttpServletRequest request, HttpServletResponse response, String email) throws ServletException, IOException {
		String color = "";
		String message = "";
		boolean success = EmailService.confirmEmail("CompanyAdministrators", email);
		
		if(success) {
			color = "green";
			message = "Реєстрація равершена! Ваш акаунт активований!)";
		}else {
			color = "red";
			message = "Не вдалося підтвердити реєстрацію акаунту";
		}
		
		request.setAttribute("title", "- Підтвердження реєстрації");
		request.setAttribute("color", color);
		request.setAttribute("message", message);
		RequestDispatcher disp = request.getRequestDispatcher("views/auth/confirm.jsp");
		disp.forward(request, response);
	}
	
	private void doSignoutAction(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
 		// 1
 		HttpSession ses = request.getSession();
 		String user = (String)request.getSession().getAttribute("user");
 		if(user != null) {
 			ses.invalidate();
 		}
 		
 		// 2
 		if(user == null){
 			Cookie[] cookies = request.getCookies();
 			if(cookies != null){
 				for(Cookie cookie: cookies){
 					if(cookie.getName().equals("user")){
 						cookie.setMaxAge(0);
 						response.addCookie(cookie);
 						break;
 					}
 				}
 			}
 		}
 		
 		// 3
 		response.sendRedirect("index.jsp");
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
	
	private void RegistrationCompany(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String city = request.getParameter("city");
		String street_hous = request.getParameter("street_hous");
		
		Company admin = new Company(
				name,
				description,
				city,
				street_hous,
				LocationService.GetLocationAddress(street_hous , city),
				5,
				Instant.now(),
				new ArrayList<String>());
		
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
	
	private void RegistrationAdminCompany(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String hashPassw = BCrypt.hashpw(request.getParameter("pass1"), BCrypt.gensalt());
		CompanyAdministraion newAdmin = new CompanyAdministraion(
				request.getParameter("name"),
				email,
				"0",
				request.getParameter("phone"),
				hashPassw,
				"https:\\Users\\photo",
				companyId);
		
		if(DocumentService.Add(newAdmin, "CompanyAdministrators")) {
			
			ServletContext context = getServletContext();
			String host = context.getInitParameter("host");
			String port = context.getInitParameter("port");
			String user = context.getInitParameter("user");
			String pass = context.getInitParameter("pass");
			
			String topic = "Підтвердження реєстрації на сайті Java-site";
			String url = "http://localhost:8080/firebase-jsp-example/Auth?page=confirm&email=" + email;
						
			String html = "<h2>Ви успішно зареєструвалися на сайті Java-site</h2>";
			html += "<hr/><h3>Для активації вашого акаунту потрібно перейти за посиланням:";
			html += String.format( "<p><a href=\"%s\">Підтвердити реєстрацію</a></p>", url);
			html += "</h3><hr/>";
			try {	
				
				EmailService.sendEmail(host, port, user, pass, email, topic, html);
				
			}catch(Exception ex) {
				request.setAttribute("title", "emailError");
				request.setAttribute("messageError", ex.getMessage());
				RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/page403.jsp");
				dispatcher.forward(request, response);
			}		
			
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
	
	private void AuthorizationAdminCompany(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("login");
		String hashPassw = request.getParameter("pass1");
		String remember = request.getParameter("remember");
		
		CompanyAdministraion  admin = AuthServise.Authorization("CompanyAdministrators", email, hashPassw, CompanyAdministraion.class);
		if(!EmailService.checkConfirm("CompanyAdministrators", email)) {
			
			request.setAttribute("title", "Підтвердження email");
			request.setAttribute("message", "Електронна пошта не підтверджена\n Підтвердіть електронну адресу і спробуйте ще раз");
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/page_res.jsp");
			dispatcher.forward(request, response);
			
		}
		if(admin != null ) {
			if(remember != null && remember.equals("yes")) {
				Cookie cooki = new Cookie("user", email);
				cooki.setMaxAge(10 * 24 * 60 * 60);
				response.addCookie(cooki);
			}
			HttpSession session = request.getSession();
			session.setAttribute("user", email);
			session.setAttribute("companyId", admin.getConpanyId());
			response.sendRedirect("index.jsp");
			
		}else {
			
			request.setAttribute("title", "Error");
			request.setAttribute("messageError", "Авторизація провалена(");
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/auth/page403.jsp");
			dispatcher.forward(request, response);
		}
	}
	
}
