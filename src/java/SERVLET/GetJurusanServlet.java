package SERVLET;

import Controller.JurusanDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import MODEL.Jurusan;

@WebServlet("/GetJurusanServlet")
public class GetJurusanServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int fakultasId = Integer.parseInt(request.getParameter("fakultasId"));
        JurusanDAO jurusanDAO = new JurusanDAO();
        List<Jurusan> jurusanList = null;
        try {
            jurusanList = jurusanDAO.getJurusanByFakultasId(fakultasId);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        for (Jurusan jurusan : jurusanList) {
            out.println("<option value=\"" + jurusan.getId() + "\">" + jurusan.getNama() + "</option>");
        }
    }
}

