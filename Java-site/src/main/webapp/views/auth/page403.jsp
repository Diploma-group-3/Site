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
	    	<h1>Diloma</h1>
	    	<h3>Офіційний сайт компанії Diloma</h3>
	    </div>
	    <div class="content-box">
	    	<!-- Content PlaceHolder -->
	    	<h2>Page: 403</h2>
	    	<hr>
	    		<h4 style="color: red">
	    			${messageError}
	    		</h4>
	    	<hr>
	    </div>
	  </div>
	</main>
	
	
	<!-- Scripts -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="static/js/main.js"></script>
</body>
</html>
