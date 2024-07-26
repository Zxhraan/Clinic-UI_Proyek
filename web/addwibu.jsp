<%@page import="Controller.WibuDAO"%>
<jsp:useBean id="wb" class="MODEL.WibuBean"></jsp:useBean>
<jsp:setProperty property="*" name="wb"/>


    <% int i = WibuDAO.simpan(wb);

        if(i > 0) {
            response.sendRedirect("addWibuSuccess.jsp");
        } else {
            response.sendRedirect("addWibuError.jsp");
        }
    %>
