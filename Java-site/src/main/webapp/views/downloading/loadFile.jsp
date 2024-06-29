<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="uk" data-bs-theme="auto">

<body>
    
	<%@include file="../base/nav.jsp" %>

	<main class="container text-center">
	  <div class="bg-body-tertiary p-5 rounded text-center main-box">
	    <div class="title-box">
	    	<h1>Diploma</h1>
	    	<h3>Офіційний сайт компанії Diploma</h3>
	    </div>
	    	<div class="bg-body-tertiary p-5 rounded text-center main-box">
		  	
		    	<!-- Content PlaceHolder -->
		    	<h2>Завантаження файлів</h2>
		    	<hr>
		    		<form  class="container text-center" id="signup-form" action="DownloadingFiles?page=downloadingPost" method="post" enctype="multipart/form-data" style="width:500px">
			    		<div class="form-group">
				    		<label for="pass1">Фото:</label>
			    			<input id="pass1" type="file" name="photo" class="form-control" required>
			    			<span id="pass1-err" class="error"></span>
			    		</div>
			    		<div class="form-group text-center" style="margin-top: 30px">
			    			<input id="submit" type="submit" value="Відправити" class="btn btn-success my-btn">
			    			&nbsp;
			    			<input id="reset" type="reset" value="Очистити" class="btn btn-danger my-btn">
			    		</div>
		    		</form>
		    	<hr>
				    <div class="container text-center">
				    	<h4 style="color: green">${ messageFile }</h4>
				    	<img alt="" src=${ imgUrl } style="width: 500px">
				    </div>
			    <hr>
	    </div>
	  </div>
	</main>
	
	<!-- Scripts -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="static/js/main.js"></script>
</body>
</html>
