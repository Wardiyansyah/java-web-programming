<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="response.jsp">
		Nama Depan: <input type="text" name="namaDepan"/><br>
		Nama Belakang: <input type="text" name="namaBelakang"/><br>
		Asal Negara: <select name="negara">
			<option>Brunei</option>
			<option>Cambodia</option>
			<option>Indonesia</option>
			<option>Malaysia</option>
			<option>Singapura</option>
		</select><br><br>
		<input type="reset" value="Reset"/>&nbsp;
		<input type="submit" value="Submit"/>
	</form>
</body>
</html>