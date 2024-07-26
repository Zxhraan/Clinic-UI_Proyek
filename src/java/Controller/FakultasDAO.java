package Controller;

import Database.DatabaseUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import MODEL.Fakultas;

public class FakultasDAO {
    public List<Fakultas> getFakultas() throws SQLException {
        List<Fakultas> fakultasList = new ArrayList<>();
        String query = "SELECT id, nama_fakultas FROM fakultas";

        try (Connection conn = DatabaseUtils.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Fakultas fakultas = new Fakultas();
                fakultas.setId(rs.getInt("id"));
                fakultas.setNama(rs.getString("nama_fakultas"));
                fakultasList.add(fakultas);
            }
        }
        return fakultasList;
    }
}

