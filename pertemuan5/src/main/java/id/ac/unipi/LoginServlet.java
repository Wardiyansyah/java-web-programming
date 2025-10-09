package id.ac.unipi;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Mendapatkan parameter dari form login
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        // Contoh validasi login sederhana
        if ("admin".equals(username) && "password123".equals(password)) {
            // Membuat session baru atau mendapatkan session yang ada
            HttpSession session = request.getSession();
            
            // Menyimpan informasi pengguna di dalam session
            session.setAttribute("username", username);
            session.setAttribute("userRole", role);  // Menyimpan role dalam session

            // Mengatur waktu kedaluwarsa session (30 menit)
            session.setMaxInactiveInterval(30 * 60);  // 30 menit

            // Membuat cookies untuk menyimpan username dan role
            Cookie usernameCookie = new Cookie("username", username);
            Cookie roleCookie = new Cookie("userRole", role);

            // Mengatur durasi cookie (1 hari)
            usernameCookie.setMaxAge(24 * 60 * 60);  // 1 hari
            roleCookie.setMaxAge(24 * 60 * 60);  // 1 hari

            // Menambahkan cookie ke response
            response.addCookie(usernameCookie);
            response.addCookie(roleCookie);

            // Redirect ke halaman dashboard
            response.sendRedirect("dashboard.jsp");
        } else {
            // Jika login gagal, kembali ke halaman login dengan pesan error
            response.sendRedirect("login.jsp?error=true");
        }
    }
}
