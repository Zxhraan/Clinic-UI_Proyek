package SERVLET;

import Database.DBConnection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String eMail = request.getParameter("eMail");
        String pWord = request.getParameter("pWord");

        if (eMail == null || pWord == null) {
            response.sendRedirect("loginerror.jsp");
            return;
        }

        try {
            conn = new DBConnection().setConnection();

            // Check user role in tbl_admin
            ps = conn.prepareStatement("SELECT role FROM tbl_admin WHERE email=? AND password=?");
            ps.setString(1, eMail);
            ps.setString(2, pWord);
            rs = ps.executeQuery();

            if (rs.next()) {
                String role = rs.getString("role");
                HttpSession session = request.getSession();
                session.setAttribute("user", eMail);
                session.setAttribute("login", true);
                session.setAttribute("role", role);

                // Redirect based on the role
                if ("super".equalsIgnoreCase(role)) {
                    RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                    rd.forward(request, response);
                } else if ("reguler".equalsIgnoreCase(role)) {
                    RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                    rd.forward(request, response);
                } else {
                    response.sendRedirect("loginerror.jsp");
                }
                return;
            }

            // Check if user is a regular user in tbl_wibu
            ps = conn.prepareStatement("SELECT status FROM tbl_wibu WHERE email=? AND password=?");
            ps.setString(1, eMail);
            ps.setString(2, pWord);
            rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("user", eMail);
                session.setAttribute("login", true);
                session.setAttribute("role", rs.getString("status"));
                RequestDispatcher rd = request.getRequestDispatcher("loginsuccess.jsp");
                rd.forward(request, response);
                return;
            }

            // If no matching user is found
            response.sendRedirect("loginerror.jsp");

        } catch (IOException | SQLException | ServletException e) {
            e.printStackTrace();
            response.sendRedirect("loginerror.jsp");
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
