package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import models.CompanyAdministraion;
import models.ReservedPackageD;
import services.DocumentService;

public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       static int c = 0;
       static int count = 0;
    public Home() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String page = request.getParameter("page");
		switch(page) {
		case "about":
			loadAboutPage(request, response);
			break;
		}
	}
	
	protected void loadAboutPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("title", "Про Сайт");
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/home/about.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	// Метод для тестування
	private CompanyAdministraion GetCompany(){
		List<CompanyAdministraion> companyTut = new ArrayList<>();
		CompanyAdministraion n = null;
		//companyTut = CompanyAdministraionsService.Authorization("admin@gmail.com");
		
		//count = company.size();
		for(CompanyAdministraion com: companyTut )
		{
			if(com.getEmail().compareTo("admin@gmail.com") == 0 ) {
				
				n = com;
			}
			break;
		}
		return n;
	}
}
