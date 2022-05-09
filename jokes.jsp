<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page
	import="mx.ipn.upiicsa.segsw.labicla.valueobject.UserValueObject"%>
<%@ page
	import="mx.ipn.upiicsa.segsw.labicla.valueobject.JokeValueObject"%>
<%@ page import="java.util.List"%>
<%! List<JokeValueObject> jokeList;
JokeValueObject joke;%>


	<%@ include file = "header.jsp" %>

	<br>

	<%@ include file = "search_panel.jsp" %>

	<br>

	<br>

	<!-- MUESTRA LISTA -->
	
	<% 
	jokeList = (List<JokeValueObject>) request.getAttribute("jokeList");
	if(jokeList != null && jokeList.size() > 0)
	{
%>
	<table class='table table-hover'>
		<thead class='thead-dark'>
		<tr>
			<th>Nombre</th>
			<th>Categoria</th>
			<th>Autor</th>
			<th>&nbsp;</th>
		</tr>
		</thead>
		<% 
		for(int i = 0;i < jokeList.size(); i++)
		{
			joke = jokeList.get(i);
%>
		<tr>
			<td><%= joke.getName() %></td>
			<td><%= joke.getCategory() %></td>
			<td><%= joke.getJokeCreatorEmail() %></td>
			<td><a
				href="get_joke_detail.controller?id=<%= joke.getId() %>">Ver
					Detalle</a></td>
		</tr>
		<% 
		}
%>
	</table>
	<% 
	}
	else
	{
%>

	</center><h1>NO SE ENCONTRARON CHISTES</h1>
	<%
		
	}
%>

<!-- TERMINA LISTA DE PRODUCTOS -->

	<br>
	<br>
	<br>
	<%@ include file = "footer.jsp" %>
