<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page
	import="mx.ipn.upiicsa.segsw.labicla.valueobject.UserValueObject"%>


<%!UserValueObject user;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file = "link.jsp" %>
</head>
<body>
<!-- USUARIO AUTENTICADO -->
	<%
		user = (UserValueObject) session.getAttribute("user");

		if (user == null) // NO hay usuario firmado
		{
	%>

		<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="/que-chistosito">QUE CHISTOSITO <img alt="logo" id="BuscarChis" src="images/ped.png"> </a><button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-light rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" data-toggle="modal" data-target="#portfolioModal1"><i><img id="BuscarChis" src="images/naipe.svg" alt="Imagen"></i>Iniciar Sesion</a></li>
                        <li class='nav-item mx-0 mx-lg-1'><a class='nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger' href='get_blog_info.controller' role='button'>Blog</a></li>
                </ul>
            </div>
        </div>
    	</nav>
	<!-- USUARIO NO AUTENTICADO -->

	<%
		} else // Hay usuario firmado
		{
	%>
	
	<br>
	<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="/que-chistosito">QUE CHISTOSITO<img alt="logo" id="BuscarChis" src="images/ped.png"></a><button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-light rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"><i><img id="BuscarChis" src="images/userjoker.svg" alt="Imagen"></i>Bienvenido <%=user.getName()%></a></li>
                        <li class='nav-item mx-0 mx-lg-1'><a class='nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger' href='get_blog_info.controller' role='button'>Blog</a></li>
                        <li class='nav-item mx-0 mx-lg-1'><a class='nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger' href='logout.controller' role='button'><i class='fas fa-sign-out-alt'></i></a></li>
                </ul>
            </div>
        </div>
    	</nav>
		<%
		}
	%>	
	<br>