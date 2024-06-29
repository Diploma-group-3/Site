package controller;

import java.io.IOException;

import com.google.cloud.storage.Blob;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import services.StorageService;


@MultipartConfig
public class DownloadingFiles extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 public DownloadingFiles() {
	        super();
	    }
	 
	 //============================================================================================================
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String page = request.getParameter("page");
			switch(page) {
				case "downloading":
					DownloadingGet(request, response);
				break;
			}
		}
	 
	 protected void DownloadingGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
			request.setAttribute("title", "Downloading");
			request.setAttribute("message", "page Downloading");
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/downloading/loadFile.jsp");
			dispatcher.forward(request, response);
		}
	 //============================================================================================================
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String page = request.getParameter("page");
			switch(page) {
				case "downloadingPost":
					DownloadingPost(request, response);
				break;
				
			}
		}
	 
	 protected void DownloadingPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 Part file = request.getPart("photo");
		 
		 if(file != null) {
			 Blob res = StorageService.Add(file, "Images/");
			 if(res != null) {
			        request.setAttribute("title", "Downloading");
					 request.setAttribute("imgUrl", res.getMediaLink());
					 request.setAttribute("messageFile", "Файл успішно завантажено в Storage");
					 RequestDispatcher dispatcher = request.getRequestDispatcher("views/downloading/loadFile.jsp");
					 dispatcher.forward(request, response);
			 }
			 
		 }
		 
		 
	}
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
}
