<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://mytags" prefix="mytag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contoh Custom Tag JSP</title>
</head>
<body>
	<h1>Contoh Penggunaan Simple Custom Tags di JSP</h1>
	
	<mytag:message/>
	
	<p><mytag:cuttentDate/></p>
		
	<p><mytag:sum num2="10" num1="20"/></p>
</body>
</html>