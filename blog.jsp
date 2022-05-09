<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="mx.ipn.upiicsa.segsw.labicla.valueobject.UserValueObject"%>
<%@ page import="mx.ipn.upiicsa.segsw.labicla.valueobject.BlogEntryValueObject"%>
<%@ page import="mx.ipn.upiicsa.segsw.labicla.util.Utility"%>
<%@ page import="java.util.List"%>

<%!
List<BlogEntryValueObject> blogEntryList;
BlogEntryValueObject blogEntry;
BlogEntryValueObject blogEntryToBeUpdated;
String value;
%>

<html>
<head>
<%@ include file = "link.jsp" %>
</head>
<body>

	<%@ include file = "header.jsp" %>
	<img src="images/Globo2.jpg" alt="Fondo" id="Fondo" class="masthead-avatar mb-5">
	<section class="page-section">
            <div class="container">
                <div class="row">
					<div class="container d-flex align-items-center flex-row">
							<div class="container d-flex align-items-center flex-column"><BR>
								<h2 class="page-section-heading text-center text-uppercase text-white">El Blog del chistosito</h2> 
								<form action="get_blog_info.controller" method="Post"> 
									<input type="text" name="criteria" placeholder="Tema" id="cajaTexto" class="src form-control" form-controlautocomplete="off" pattern="[A-Za-z0-9!?#$%&/()={}.,:;_ ]+" title="No se aceptan ni guiones, ni comilla simple, ni signos mayor que o menor que" size="50">							
									<div class="container d-flex align-items-center flex-column">
										<input type="submit" value="Buscar" class="IniSess mt-3 mb-5">	
									</div>
								</form>			
							</div>		
					</div>
                </div>  
            </div>
        </section>
	<!--Si no hay usuario-->
	<% 
    blogEntryList = (List<BlogEntryValueObject>) request.getAttribute("blogEntryList");
	if(blogEntryList != null && blogEntryList.size() > 0)
	{
    %>

	<table class='table table-hover'>
		<thead class='thead-dark'>
			<th width="15%">User</th>
			<th width="60%">Entrada</th>
			<th width="15%">Fecha</th>
			<% 
			
			System.out.println("blog.jsp - User - " + user);
			
			if( user != null) { 
					
			%>
			<th width="5%">&nbsp;</th>
			<th width="5%%">&nbsp;</th>
			<% } %>
		</thead>		

		<% 
		for(int i = 0;i < blogEntryList.size(); i++)
		{
			blogEntry = blogEntryList.get(i);
		%>
		<tr>
			<td><%= blogEntry.getUserEmail() %></td>
			<td><div><%= blogEntry.getValue() %></div></td>
			<td><%= blogEntry.getRegistrationDate() %></td>
			
			<% if( user != null && (blogEntry.getUserEmail().equals(user.getEmail()) || user.getEmail().equals("admin@novalidserver.net") )) { %>
			
			<td><a href="load_blog_entry_to_be_modified.controller?id=<%= blogEntry.getId() %>">Modify</a></td>
			<td><a href="delete_blog_entry.controller?id=<%= blogEntry.getId() %>">Delete</a></td>
			<% } %>			
		</tr>
		<% 
		}
%>
	</table>
	<br><br><br><br><br><br>
	<% 
	}
	else if(Utility.containsAnEmptyValue(request.getParameter("criteria")) == false)
	{
%>
	<font color="red">No se encontraron info para <%= request.getParameter("criteria") %></font>	
	<%		
	}
%>	

<%
	/*Aqui empieza lo del blog*/
	if(user != null) 
	{
%>
<!--************************************************************************************************************************-->	
	<section class="page-section">
            <div class="container">
                <div class="row">
					<div class="container d-flex align-items-center flex-row">
							<div class="container d-flex align-items-center flex-column"><BR>
		<% 
		  blogEntryToBeUpdated = (BlogEntryValueObject) request.getAttribute("blogEntryToBeUpdated");
		
		  value = "";
		  if(blogEntryToBeUpdated != null)
		  {
			  value = blogEntryToBeUpdated.getValue();
		%>
			<H2>Modificar comentario</H2>
			<form action="modify_blog_entry.controller" method="POST">
			<input type="hidden" name="id" value="<%=blogEntryToBeUpdated.getId()%>">
			
		<% } else { %>
			<H2>Agregar comentario</H2>
			<form action="register_blog_entry.controller" method="POST">
		<% } %>
		
			<textarea name="blog-entry-value" rows="5" cols="80" placeholder="Que deseas postear?" pattern="[A-Za-z0-9!?#$%&/()={}.,:;_ ]+" title="No se aceptan ni guiones, ni comilla simple, ni signos mayor que o menor que y las letras con acento"><%= value %></textarea>
			<input type="submit" value="Enviar" class="IniSess mt-3 mb-5">
		</form>
						</div>		
					</div>
                </div>  
            </div>
        </section>
	<%
	}%>
	<%@ include file = "footer.jsp" %>
	</body>
</html>