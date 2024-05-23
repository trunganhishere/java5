package com.example.demo.model;

public class NhanVien {
    private Integer id;
    private String ten;
    private String tuoi;
    private String diaChi;
    private String gioiTinh;

    @Override
    public String toString() {
        return "NhanVien{" +
                "id=" + id +
                ", ten='" + ten + '\'' +
                ", tuoi='" + tuoi + '\'' +
                ", diaChi='" + diaChi + '\'' +
                ", gioiTinh='" + gioiTinh + '\'' +
                '}';
    }

    public NhanVien() {
    }

    public NhanVien(Integer id, String ten, String tuoi, String diaChi, String gioiTinh) {
        this.id = id;
        this.ten = ten;
        this.tuoi = tuoi;
        this.diaChi = diaChi;
        this.gioiTinh = gioiTinh;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getTuoi() {
        return tuoi;
    }

    public void setTuoi(String tuoi) {
        this.tuoi = tuoi;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }
}
