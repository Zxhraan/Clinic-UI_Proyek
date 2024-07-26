<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    HttpSession sessionToInvalidate = request.getSession(false);
    if(sessionToInvalidate != null) {
        sessionToInvalidate.removeAttribute("login");
        sessionToInvalidate.removeAttribute("eMail");
        sessionToInvalidate.invalidate();
    }
    response.sendRedirect("index.jsp"); // Mengarahkan kembali ke halaman utama setelah logout
%>

