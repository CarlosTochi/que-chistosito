<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="mx.ipn.upiicsa.segsw.labicla.valueobject.UserValueObject"%>
<%@ page import="mx.ipn.upiicsa.segsw.labicla.valueobject.ErrorValueObject"%>

<%!
ErrorValueObject error;
%>


<%@ include file = "header.jsp" %>

<%@ include file = "search_panel.jsp" %>
<section class="page-section">
    <div class="container">
	  <div class="row">
		<ul>

<%
	error = (ErrorValueObject) request.getAttribute("error");
	if( error != null){
%>

			<font color="red"><h1><%=error.getMessage() %></h1></font>

			<p><h2><%=error.getDescription() %></h2><p>

<%
		if( error.getException() != null){
%>
			<h3>Exception</h3>
			<p>Causa: <%=error.getException().getCause() %></p>

			<h4>StackTrace</h4>
			<p><%=error.getException() %></p>

<%
			StackTraceElement[] stArray = error.getException().getStackTrace();
			for(int i=0; i < stArray.length; i++){
%>
				<p><%=stArray[i] %><p>

<%
			}
		}	
	}
	else{
%>
			<h1>No hay informaci&oacute;n del error a mostrar</h1>
<% 
	}
%>
			</ul>
        </div>  
    </div>
</section>
<%@ include file = "footer.jsp" %>
