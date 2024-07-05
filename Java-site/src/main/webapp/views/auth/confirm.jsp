<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="uk" data-bs-theme="auto">
<head>
	
</head>
<body>
    
	<%@include file="../base/nav.jsp" %>

	<main class="container">
	  <div class="bg-body-tertiary p-5 rounded text-center main-box">
	    <div class="title-box">
	    	<h1>Diploma</h1>
	    	<h3>Офіційний сайт компанії Diploma</h3>
	    </div>
	    <div class="content-box">
	    	<!-- Content PlaceHolder -->
	    	<h2 style = "color: ${color}"> ${message} </h2>
	    </div>
	  </div>
	</main>
	
	<footer class="container text-center">
		<hr>
		<h6> Copyright: &copy; Diploma &trade; - Kyiv, 2024</h6>
	</footer>
	
	<!-- Scripts -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="static/js/main.js"></script>
</body>
</html>
