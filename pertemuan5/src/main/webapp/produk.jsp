<%@ page import="java.util.ArrayList" %>
<%@ page import="jakarta.servlet.http.Cookie" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Kelola Produk</title>
</head>
<body>
    <h2>Form Input Produk</h2>
    
    <form action="produk.jsp" method="post">
        <label for="id">ID Produk:</label>
        <input type="text" id="id" name="id" required><br><br>
        
        <label for="nama">Nama Produk:</label>
        <input type="text" id="nama" name="nama" required><br><br>
        
        <label for="harga">Harga:</label>
        <input type="number" id="harga" name="harga" required><br><br>
        
        <input type="submit" value="Simpan">
        <input type="reset" value="Reset">
    </form>

    <br><br>

    <%
   		HttpSession session = request.getSession();
        // Membuat list produk
        ArrayList<String[]> produkList = (ArrayList<String[]>) session.getAttribute("produkList");
        
        // Memproses data produk yang diinput
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String id = request.getParameter("id");
            String nama = request.getParameter("nama");
            String harga = request.getParameter("harga");
            
            if (produkList == null) {
                produkList = new ArrayList<>();
            }
            
            // Menyimpan data produk ke dalam list
            produkList.add(new String[] { id, nama, harga });
            
            // Menyimpan produkList ke dalam session
            session.setAttribute("produkList", produkList);
        }
        
        // Menampilkan tabel produk jika ada produk yang diinput
        if (produkList != null && produkList.size() > 0) {
    %>

    <h3>Daftar Produk</h3>
    <table border="1">
        <tr>
            <th>ID Produk</th>
            <th>Nama Produk</th>
            <th>Harga</th>
        </tr>
        <%
            for (String[] produk : produkList) {
        %>
        <tr>
            <td><%= produk[0] %></td>
            <td><%= produk[1] %></td>
            <td><%= produk[2] %></td>
        </tr>
        <%
            }
        %>
    </table>

    <%
        }
    %>

    <br>
    <a href="dashboard.jsp">Kembali ke Dashboard</a><br>
    <a href="LogoutServlet">Logout</a>
</body>
</html>