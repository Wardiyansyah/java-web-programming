<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forms</title>
</head>
<body>
	<h2>Hasil Input</h2>
	<%
		// Mendapatkan nilai input dari form
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String country = request.getParameter("country");
		String programming = request.getParameter("programming");
		
		// Menampilkan hasil input
		if(name != null && address != null && country != null && programming != null){ %>
    		<p>Nama: <%= name %></p>
			<p>Alamat: <%= address %></p>
			<p>Asal Negara: <%= country %></p>
			<p>Pemrograman yang Dikuasai: <%= programming %></p>
	<% } else { %>
			<p>Data tidak lengkap</p>
	<% } %><br>
	<a href="latihan8.jsp">Kembali ke Form</a>
</body>
</html>
