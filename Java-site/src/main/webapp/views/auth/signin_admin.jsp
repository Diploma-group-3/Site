<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="uk" data-bs-theme="auto">
<head>
	<style>
		#signin-form{
			border: 1px solid silver;
			border-radius: 15px;
			text-align: left;
			width: 450px;
			padding: 20px 40px;
			margin: 20px auto;
			background-color: whitesmoke;
			box-shadow: 0 0 20px silver;
		}
		label{
			color: navy;
			margin-top: 5px;
			padding-bottom: 0px;
		}
		.my-btn{
			margin-top: 25px;
			margin-bottom: 10px;
			width: 150px;
			border-radius: 5px;
		}
		.error{
			color: red;
			display: block;
			margin-top: 3px;
			font-size: 10pt;
			font-style: italic;
		}
	</style>
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
	    	<h2>Авторизація</h2>
	    	<form id="signin-form" action="Auth?page=signin_admin" method="post">
	    		<div class="form-group">
	    			<label for="login">Логін:</label>
	    			<input id="login" type="text" name="login" class="form-control" required>
	    			<span id="login-err" class="error"></span>
	    		</div>
	    		<div class="form-group">
	    			<label for="pass1">Пароль:</label>
	    			<input id="pass1" type="password" name="pass1" class="form-control" required>
	    			<span id="pass1-err" class="error"></span>
	    		</div>
	    		<div class="form-group text-center mt-3">
	    			<input id="remember" type="checkbox" name="remember" value="yes">
	    			<label for="remember">Залишатись у системі</label>
	    		</div>
	    		<div class="form-group text-center">
	    			<input id="submit" type="submit" value="Відправити" class="btn btn-success my-btn">
	    			&nbsp;
	    			<input id="reset" type="reset" value="Очистити" class="btn btn-danger my-btn">
	    		</div>
	    	</form>
	    	<script src="static/signup.js"></script>
	    </div>
	  </div>
	</main>
	
	<footer class="container text-center">
		<hr>
		<h6> Copyright: &copy; Diploma &trade; - Kyiv, 2024</h6>
	</footer>
	
	<!-- Scripts -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
