<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://mytags" prefix="mytag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contoh Penggunaan Classic Tags di JSP</title>
</head>
<body>
	<h1>Contoh Penggunaan Classic Tags</h1>
	
	<% int iterationNumber = 1; %>
	
	<mytag:loop count="5">
 		<li>Item dalam iterasi ke-<%= iterationNumber++ %></li>
	</mytag:loop>
	
	<p><mytag:print text="Hello JSP!" times="3"/></p>
</body>
</html>