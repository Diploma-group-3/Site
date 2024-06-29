<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="uk" data-bs-theme="auto">

<body>
	<%@include file="../base/nav.jsp" %>

	<main class="container">
	  <div class="bg-body-tertiary p-5 rounded text-center main-box">
	    <div class="title-box">
	    
	    	<h1>Diploma</h1>
	    	<h3 style = "color: gray">Про Сайт</h3>
	    	
	    	<h3 style = "color: gray">Name: <%= request.getAttribute("Name") %></h3>
	    	<h3 style = "color: red">Email: <%= request.getAttribute("Email") %></h3>
	    	<h3 style = "color: gray">Password: <%= request.getAttribute("Passw") %></h3>
	    	
	    	
	    	<h3 style = "color: gray">Status: <%= request.getAttribute("status") %></h3>
	    	<h3 style = "color: gray">Авторизація: <%= request.getAttribute("auth") %></h3>
	    	<h3 style = "color: gray">Location: <%= request.getAttribute("location") %></h3>
	    </div>
	  </div>
	</main>
	
	<!-- Scripts -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
