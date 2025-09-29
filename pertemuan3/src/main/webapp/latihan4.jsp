<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="id.ac.unipi.FunUtils" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Ubah frasa "Hello World" menjadi huruf kecil = <%= FunUtils.buatKecil("Hello World") %>
	<br>
	Ubah frasa "Hello World" menjadi huruf besar = <%= FunUtils.buatBesar("Hello World") %>
</body>
</html>