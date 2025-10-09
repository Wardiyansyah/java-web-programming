<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h2>Login</h2>
    <form action="LoginServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <label for="role">Role:</label>
        <select id="role" name="role" required>
            <option value="admin">Admin</option>
            <option value="user">User</option>
            <option value="guest">Guest</option>
        </select><br><br>
        
        <input type="submit" value="Login">
    </form>

    <!-- Menampilkan pesan error jika login gagal -->
    <%
        String error = request.getParameter("error");
        if ("true".equals(error)) {
            out.println("<p style='color:red;'>Login gagal! Username, password, atau role salah.</p>");
        }
    %>
</body>
</html>
