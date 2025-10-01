<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="response2.jsp" method="post">
		Nama: <input type="text" name="name" required/><br>
		Alamat: <input type="text" name="address" required/><br>
		Asal Negara: <select name="country" required>
			<option>Brunei</option>
			<option>Cambodia</option>
			<option>Indonesia</option>
			<option>Malaysia</option>
			<option>Singapura</option>
		</select><br>
		Pemrograman yang Dikuasai:<br>
		<input type="radio" id="java" name="programming" value="Java"> Java&nbsp;
		<input type="radio" id="php" name="programming" value="PHP"> PHP&nbsp;
		<input type="radio" id="dotnet" name="programming" value=".Net"> .Net&nbsp;
		<input type="radio" id="python" name="programming" value="Python"> Python&nbsp;
		<input type="radio" id="c" name="programming" value="C"> C <br><br>
		<input type="reset" value="Reset"/>
		<input type="submit" value="Submit"/>
	</form>
</body>
</html>