<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h3>JSP dengan Built-In object</h3>
    <hr>
    Nama Web Browser yang digunakan: <%= request.getHeader("User-Agent") %>
    <br><br>
    Bahasa yang digunakan: <%= request.getLocale() %>
</body>
</html>