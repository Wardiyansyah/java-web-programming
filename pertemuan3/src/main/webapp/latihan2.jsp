<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriplet</title>
</head>
<body>
	<h3>JSP Scriplet</h3>
	<hr>
	<%
	int j =0;
	for(int i=1; i<=20; i++){
		j = j+i;
		if(i==20){
			out.println(i+" = ");
		}else{
			out.println(i+" + ");
		}
	}
	out.println(j);
	%>
</body>
</html>