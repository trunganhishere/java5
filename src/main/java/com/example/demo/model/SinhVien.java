package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter

@Entity
@Table(name = "sinh_vien")
public class SinhVien {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private int id ;

        @Column(name = "ho_ten")
        private String hoTen;

        @Column(name = "dia_chi")
        private String diaChi;

        @Column(name = "gioi_tinh")
        private String gioiTinh;

        @Column(name = "trang_thai")
        private String trangThai;
}
