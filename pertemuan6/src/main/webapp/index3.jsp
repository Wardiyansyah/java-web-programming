<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://mytags" prefix="mytag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contoh Penggunaan Body Tags di JSP</title>
</head>
<body>
	<h1>Contoh Penggunaan Body Tags</h1>
	
	<mytag:upperCase>
		Ini adalah teks yang akan diubah menjadi huruf kapital.
	</mytag:upperCase>
	
	<hr>
	
	<mytag:repeatBody times="3">
		Teks ini akan diulang sebanyak 3 kali. <br>
	</mytag:repeatBody>
</body>
</html>