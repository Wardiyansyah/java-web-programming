<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Hello World JSP</h3>
	<hr>
	Waktu server menunjukkan pukul <%= new java.util.Date() %>
	<br>
	Berapakah perkalian 200 x 300 = <%= 200*300 %>
	<br>
	Apakah 100 kurang dari 75? <%= 100 < 75 %>
</body>
</html>