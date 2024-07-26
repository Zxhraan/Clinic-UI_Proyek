/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;


import Database.DatabaseUtils;
import MODEL.Jurusan;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JurusanDAO {
    public List<Jurusan> getJurusanByFakultasId(int fakultasId) throws SQLException {
        List<Jurusan> jurusanList = new ArrayList<>();
        String query = "SELECT id, nama_jurusan FROM jurusan WHERE fakultas_id = ?";

        try (Connection conn = DatabaseUtils.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, fakultasId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Jurusan jurusan = new Jurusan();
                    jurusan.setId(rs.getInt("id"));
                    jurusan.setNama(rs.getString("nama_jurusan"));
                    jurusan.setFakultasId(fakultasId);
                    jurusanList.add(jurusan);
                }
            }
        }
        return jurusanList;
    }
}


