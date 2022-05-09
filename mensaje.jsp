<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page
	import="mx.ipn.upiicsa.segsw.labicla.util.Utility"%>

<%!
String message;
%>
<!-- RECIBE VALOR DE MENSAJE SI HAY, PARA MOSTRARLO -->
<%
	message = (String) request.getAttribute("message");

	if (Utility.containsAnEmptyValue(message) == false) // Hay mensaje por mostrar
	{
%>
		<section class="page-section">
		    <div class="container">
		        <div class="row">
				<ul>
					<li><font color="RED"><%= message %></font></li>
				</ul>
		        </div>  
		    </div>
		</section>

<%
	} 
%>
