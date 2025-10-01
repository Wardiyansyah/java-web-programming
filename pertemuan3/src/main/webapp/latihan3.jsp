<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declaration</title>
</head>
<body>
	<%!
	String hurufKecil(String data){
		return data.toLowerCase();	
	}
	String hurufBesar(String data){
		return data.toUpperCase();
	}
	%>
	<br>
	Mengubah huruf kecil "Hello World": <%= hurufKecil("Hello World") %>
	<br>
	Mengubah huruf besar "Hello World": <%= hurufBesar("Hello World") %>
</body>
</html>