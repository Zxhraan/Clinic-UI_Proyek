package MODEL;

public class Appointment {
    private int id;
    private String layanan;
    private String nama;
    private String tanggalLahir;
    private String telepon;
    private String kodeVoucher;
    private String tanggalKunjungan;
    private String jamKunjungan;

    // Default constructor
    public Appointment() {}

    // Constructor with all fields including id
    public Appointment(int id, String layanan, String nama, String tanggalLahir, String telepon, String kodeVoucher, String tanggalKunjungan, String jamKunjungan) {
        this.id = id;
        this.layanan = layanan;
        this.nama = nama;
        this.tanggalLahir = tanggalLahir;
        this.telepon = telepon;
        this.kodeVoucher = kodeVoucher;
        this.tanggalKunjungan = tanggalKunjungan;
        this.jamKunjungan = jamKunjungan;
    }

    // Constructor without id (useful for creating new records where id is auto-generated)
    public Appointment(String layanan, String nama, String tanggalLahir, String telepon, String kodeVoucher, String tanggalKunjungan, String jamKunjungan) {
        this.layanan = layanan;
        this.nama = nama;
        this.tanggalLahir = tanggalLahir;
        this.telepon = telepon;
        this.kodeVoucher = kodeVoucher;
        this.tanggalKunjungan = tanggalKunjungan;
        this.jamKunjungan = jamKunjungan;
    }

    // Getters and Setters for all fields
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLayanan() {
        return layanan;
    }

    public void setLayanan(String layanan) {
        this.layanan = layanan;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getTanggalLahir() {
        return tanggalLahir;
    }

    public void setTanggalLahir(String tanggalLahir) {
        this.tanggalLahir = tanggalLahir;
    }

    public String getTelepon() {
        return telepon;
    }

    public void setTelepon(String telepon) {
        this.telepon = telepon;
    }

    public String getKodeVoucher() {
        return kodeVoucher;
    }

    public void setKodeVoucher(String kodeVoucher) {
        this.kodeVoucher = kodeVoucher;
    }

    public String getTanggalKunjungan() {
        return tanggalKunjungan;
    }

    public void setTanggalKunjungan(String tanggalKunjungan) {
        this.tanggalKunjungan = tanggalKunjungan;
    }

    public String getJamKunjungan() {
        return jamKunjungan;
    }

    public void setJamKunjungan(String jamKunjungan) {
        this.jamKunjungan = jamKunjungan;
    }
}
