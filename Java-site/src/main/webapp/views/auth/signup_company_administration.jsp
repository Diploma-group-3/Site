<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="uk" data-bs-theme="auto">
<head>
	<style>
		#signup-form{
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
		.gen-pass{
		    text-decoration: none;
		    font-size: 12px;
		    display: flex;
		    justify-content: end;
		    color: rgb(5, 175, 5);
		}
		.gen-pass:hover{
			color: #00FF00;
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
	    	<h2 style="color: green">Реєстрація компанії пройшла успішно</h2>
	    	<h2>Зареєструйте будь-ласка адміністратора компанії</h2>
	    	<form id="signup-form" action="Auth?page=signup_company_admin" method="post">
	    		<div class="form-group">
	    			<label for="name">Імя та Прізвище:</label>
	    			<input id="name" type="text" name="name" class="form-control" required>
	    		</div>
	    		<div class="form-group">
	    			<label for="email">Email:</label>
	    			<input id="email" type="email" name="email" class="form-control" required>
	    			<span id="email-err" class="error"></span>
	    		</div>
	    		<div class="form-group">
	    			<label for="phone">Телефон:</label>
	    			<input id="phone" type="text" name="phone" class="form-control" required>
	    		</div>
	    		<div class="form-group">
		    		<label for="pass1">Пароль:</label>
	    			<input id="pass1" type="password" name="pass1" class="form-control" required>
		    		<a class="gen-pass">Згенерувати пароль</a>
	    			<span id="pass1-err" class="error"></span>
	    		</div>
	    		<div class="form-group">
	    			<label for="pass2">Повтор:</label>
	    			<input id="pass2" type="password" name="pass2" class="form-control" required>
	    			<span id="pass2-err" class="error"></span>
	    		</div>
	    		
	    		<div class="form-group text-center">
	    			<input id="submit" type="submit" value="Відправити" class="btn btn-success my-btn">
	    			&nbsp;
	    			<input id="reset" type="reset" value="Очистити" class="btn btn-danger my-btn">
	    		</div>
	    	</form>
	    </div>
	  </div>
	</main>
	
	<footer class="container text-center">
		<hr>
		<h6> Copyright: &copy; Diploma &trade; - Kyiv, 2024</h6>
	</footer>
	
	<!-- Scripts -->
	<script src="static/js/validator.js"></script>
	<script src="static/js/controler.js"></script>
	<script src="static/js/validation.js"></script>
</body>
</html>
