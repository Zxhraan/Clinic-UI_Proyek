<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@include file="atas.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cart</title>
    <link rel="stylesheet" href="CSSSS/st.css">
</head>
<body>
    <div class="container">
        <br><br><br><br><br>
        <br><br><br>
        <h1>Your Cart</h1>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Database connection
                    String url = "jdbc:mysql://localhost:3306/wibu_2se1";
                    String user = "root";
                    String password = "";
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    double grandTotal = 0.0;

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection(url, user, password);
                        stmt = conn.createStatement();
                        String query = "SELECT id, name, price, quantity FROM cart";
                        rs = stmt.executeQuery(query);

                        while (rs.next()) {
                            int id = rs.getInt("id");
                            String name = rs.getString("name");
                            double price = rs.getDouble("price");
                            int quantity = rs.getInt("quantity");
                            double total = price * quantity;
                            grandTotal += total;
                %>
                <tr>
                    <td><%= name %></td>
                    <td>$<%= price %></td>
                    <td>
                        <input type="number" value="<%= quantity %>" min="1" data-id="<%= id %>" data-price="<%= price %>" class="quantity">
                    </td>
                    <td>$<%= total %></td>
                    <td>
                        <button class="remove-from-cart" data-id="<%= id %>">Remove</button>
                    </td>
                </tr>
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
            </tbody>
        </table>
        <h2>Grand Total: $<span id="grandTotal"><%= grandTotal %></span></h2>
        <button id="checkout">Checkout</button>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            document.querySelectorAll('.quantity').forEach(input => {
                input.addEventListener('change', function () {
                    const id = this.getAttribute('data-id');
                    const price = parseFloat(this.getAttribute('data-price'));
                    const quantity = parseInt(this.value);
                    const total = price * quantity;
                    this.closest('tr').querySelector('td:nth-child(4)').innerText = '$' + total.toFixed(2);

                    updateCart(id, quantity);
                    updateGrandTotal();
                });
            });

            document.querySelectorAll('.remove-from-cart').forEach(button => {
                button.addEventListener('click', function () {
                    const id = this.getAttribute('data-id');
                    removeFromCart(id);
                    this.closest('tr').remove();
                    updateGrandTotal();
                });
            });

            document.getElementById('checkout').addEventListener('click', function () {
                checkout();
            });

            function updateCart(id, quantity) {
                const xhr = new XMLHttpRequest();
                xhr.open('POST', 'UpdateCart', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onload = function () {
                    if (xhr.status === 200) {
                        console.log('Cart updated successfully');
                    } else {
                        console.error('Error updating cart');
                    }
                };
                xhr.send('id=' + id + '&quantity=' + quantity);
            }

            function removeFromCart(id) {
                const xhr = new XMLHttpRequest();
                xhr.open('POST', 'RemoveFromCart', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onload = function () {
                    if (xhr.status === 200) {
                        console.log('Item removed successfully');
                    } else {
                        console.error('Error removing item');
                    }
                };
                xhr.send('id=' + id);
            }

            function checkout() {
                const xhr = new XMLHttpRequest();
                xhr.open('POST', 'Checkout', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onload = function () {
                    if (xhr.status === 200) {
                        const response = JSON.parse(xhr.responseText);
                        if (response.success) {
                            alert('Checkout successful!');
                            window.location.reload();
                        } else {
                            alert('Checkout failed!');
                        }
                    } else {
                        console.error('Error during checkout');
                    }
                };
                xhr.send();
            }

            function updateGrandTotal() {
                let grandTotal = 0;
                document.querySelectorAll('tbody tr').forEach(row => {
                    const total = parseFloat(row.querySelector('td:nth-child(4)').innerText.replace('$', ''));
                    grandTotal += total;
                });
                document.getElementById('grandTotal').innerText = grandTotal.toFixed(2);
            }
        });
    </script>
</body>
</html>













