package MODEL;

public class Fakultas {
    private int id;
    private String nama;

    // Default constructor
    public Fakultas() {
        // Default constructor, can be empty or initialize default values
    }

    // Constructor with parameters
    public Fakultas(int id, String nama) {
        this.id = id;
        this.nama = nama;
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
}


