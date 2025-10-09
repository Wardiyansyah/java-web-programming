<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <%
        // Mendapatkan session yang ada (jika ada)
        HttpSession session = request.getSession(false);
        String username = null;
        String role = null;

        // Mengecek apakah session ada atau membaca dari cookies
        if (session != null && session.getAttribute("username") != null && session.getAttribute("userRole") != null) {
            username = (String) session.getAttribute("username");
            role = (String) session.getAttribute("userRole");
        } else {
            // Mencoba mendapatkan username dan role dari cookies
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if ("username".equals(cookie.getName())) {
                        username = cookie.getValue();
                    }
                    if ("userRole".equals(cookie.getName())) {
                        role = cookie.getValue();
                    }
                }
            }
        }

        if (username != null && role != null) {
            out.println("<h2>Selamat datang, " + username + "!</h2>");
            out.println("<p>Role Anda: " + role + "</p>");
            out.println("<p>Anda berhasil login sebagai " + role + ".</p>");
            out.println("<a href='LogoutServlet'>Logout</a>");
            out.println("<a href='produk.jsp'>Kelola Produk</a>");
        } else {
            // Jika tidak ada session atau cookie, redirect ke halaman login
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>
