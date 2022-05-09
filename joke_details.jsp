<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page
	import="mx.ipn.upiicsa.segsw.labicla.valueobject.UserValueObject"%>
<%@ page
	import="mx.ipn.upiicsa.segsw.labicla.valueobject.JokeValueObject"%>

<%!JokeValueObject joke;%>


	<%@ include file = "header.jsp" %>


	<%@ include file = "search_panel.jsp" %>

	<br>

	<!-- AQUI EMPIEZAN DETALLES -->

	<%
		joke = (JokeValueObject) request.getAttribute("joke");
		if (joke != null) {
	%>
	<!-- Chiste-->
        <section class="page-section" id="Evelyn">
            <div class="container">
                <!-- About Section Content-->
                <div class="row">
                   <div class="col-md-3">
						<img src="images/<%= joke.getImage() %>" alt="Imagen del chiste" style="width:250px;"/>
						</div>

						<div class="col-md-9">
						<h2>
						Creador: 
						<%=joke.getJokeCreatorEmail()%></h2>
						<h2>
						Categoria: 
						<%=joke.getCategory()%></h2>
						<h2 id="chiste">
						Chiste: 
						<%=joke.getContent()%></h2>
						<h2>
						Likes: 
						<%=joke.getLike()%>
						</h2>
						<h2>
						Dislikes: 
						<%=joke.getDislike()%>
						</h2>
						</div>  
            	  </div>
    	  	</div>
        </section>
	
	<%
		} else {
	%>

	<font>No se encontr&oacute; el chiste indicado</font>

	<%
		}
	%>
<!-- AQUI TERMINA DETALLES -->

	<br>
	<br>
	<%@ include file = "footer.jsp" %>
