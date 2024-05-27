package com.example.demo.repository;

import com.example.demo.model.SinhVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface SinhVienRepository extends JpaRepository<SinhVien, Integer> {
    @Query("select sv from SinhVien sv where sv.hoTen like %:keyword% or sv.diaChi like %:keyword%")
    List<SinhVien> searchByKeyword(@Param("keyword") String keyword);
}
