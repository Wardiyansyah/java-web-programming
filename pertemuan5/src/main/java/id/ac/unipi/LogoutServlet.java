package id.ac.unipi;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Mendapatkan session yang ada
        HttpSession session = request.getSession(false); // false -> jangan buat session baru

        // Jika session ada, maka invalidate untuk menghapusnya
        if (session != null) {
            session.invalidate();
        }

        // Menghapus cookies
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("username".equals(cookie.getName()) || "JSESSIONID".equals(cookie.getName()) || "userRole".equals(cookie.getName())) {
                    cookie.setMaxAge(0); // Menghapus cookie
                    response.addCookie(cookie); // Menambahkan cookie yang telah dihapus ke response
                }
            }
        }

        // Redirect ke halaman login
        response.sendRedirect("login.jsp");
    }
}
