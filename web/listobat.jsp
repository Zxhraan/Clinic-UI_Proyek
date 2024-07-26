<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
HttpSession currentSession = request.getSession(false);
    if (currentSession == null || currentSession.getAttribute("login") == null || !(boolean) currentSession.getAttribute("login")) {
        response.sendRedirect("masuk.jsp"); // Redirect to your login page
    }
%>
<%@include file="atas.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Medications</title>
    <link rel="stylesheet" href="CSSSS/st.css">
</head>
<body>
    <div class="container">
        
        <br><br><br><br><br>
        <br>
        <h1>Medications List</h1>
        <div class="medications">
            <%
                // Database connection
                String url = "jdbc:mysql://localhost:3306/wibu_2se1";
                String user = "root";
                String password = "";
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection(url, user, password);
                    stmt = conn.createStatement();
                    String query = "SELECT name, type, price, description, image_url, stock FROM medicines";
                    rs = stmt.executeQuery(query);

                    while (rs.next()) {
                        String name = rs.getString("name");
                        String type = rs.getString("type");
                        String price = rs.getString("price");
                        String description = rs.getString("description");
                        String imageUrl = rs.getString("image_url");
                        int stock = rs.getInt("stock");
            %>
                        <div class="medication-box">
                            <img src="<%= imageUrl %>" alt="<%= name %>">
                            <h2><%= name %></h2>
                            <p>Type: <%= type %></p>
                            <p>Price: $<%= price %></p>
                            <p>Description: <%= description %></p>
                            <p>Stock: <span class="stock"><%= stock %></span></p>
                            <input type="number" min="1" max="<%= stock %>" value="1" class="quantity">
                            <button class="add-to-cart" data-name="<%= name %>" data-price="<%= price %>" data-stock="<%= stock %>">Add to Cart</button>
                        </div>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            %>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.add-to-cart').forEach(button => {
        button.addEventListener('click', function () {
            const name = this.getAttribute('data-name');
            const price = parseFloat(this.getAttribute('data-price'));
            const stock = parseInt(this.getAttribute('data-stock'));
            const quantity = parseInt(this.closest('.medication-box').querySelector('.quantity').value);

            if (quantity > stock) {
                alert('Quantity exceeds available stock!');
                return;
            }

            // Create an object to send to the server
            const item = {
                name: name,
                price: price,
                quantity: quantity
            };

            // Send data to the server
            fetch('AddToCart', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: new URLSearchParams(item)
            })
            .then(response => {
                if (response.ok) {
                    alert('Item added to cart!');
                } else {
                    alert('Failed to add item to cart.');
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        });
    });
});

    </script>
</body>
</html>

