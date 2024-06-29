<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
 	<title>Diploma - ${title}</title>
<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
  <div class="container">
    <a class="navbar-brand" href="index.jsp">Diploma</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item">
          <a class="nav-link" href="Home?page=about">Про Сайт</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="DownloadingFiles?page=downloading">DownloadingFile</a>
        </li>
      </ul>
      <ul class="navbar-nav ms-auto mb-2 mb-md-0">
      	<li class="nav-item">
          <a class="nav-link" href="#" style="margin-right: 50px">
          		Привіт, 
          		<c:if test="${user != null}">
          			<span style="color: lime">
          				<c:out value="${user}"></c:out>!
          			</span>
          		</c:if>
          		<c:if test="${user == null}">
          			<span style="color: yellow">
          				Гість!
          			</span>
          		</c:if>
          </a>
        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="Auth?page=signin">Вхід</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="Auth?page=signup">Реєстрація компанії</a>
	        </li>
      </ul>
    </div>
  </div>
</nav>
