import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODEL.CartItem; // Ganti dengan paket dan kelas CartItem yang sesuai

@WebServlet("/ViewCartServlet")
public class ViewCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String url = "jdbc:mysql://localhost:3306/wibu_2se1";
    private static final String user = "root";
    private static final String password = "";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CartItem> cartItems = new ArrayList<>();

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            String query = "SELECT name, price, quantity FROM cart_items"; // Ganti dengan query sesuai struktur tabel Anda
            stmt = conn.prepareStatement(query);
            rs = stmt.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");

                // Buat objek CartItem dan tambahkan ke daftar cartItems
                CartItem item = new CartItem(name, price, quantity);
                cartItems.add(item);
            }

            // Set cartItems sebagai atribut request
            request.setAttribute("cartItems", cartItems);
            request.getRequestDispatcher("shopping-cart.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

