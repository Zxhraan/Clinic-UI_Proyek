/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODEL;


public class Jurusan {
    private int id;
    private String nama;
    private int fakultasId; // Assuming fakultas_id reference

    // Default constructor (if needed)
    public Jurusan() {
        // Default constructor implementation, can be empty
    }

    // Constructor with parameters
    public Jurusan(int id, String nama, int fakultasId) {
        this.id = id;
        this.nama = nama;
        this.fakultasId = fakultasId;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public int getFakultasId() {
        return fakultasId;
    }

    public void setFakultasId(int fakultasId) {
        this.fakultasId = fakultasId;
    }
}
