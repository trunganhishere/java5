package com.example.demo.Controller;

import com.example.demo.model.NhanVien;
import com.example.demo.service.NhanVienService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class NhanVienController {

    @Autowired
    NhanVienService service;

    @GetMapping("/nhan-vien")
    public String nhanVien(Model model){
    for (NhanVien nv: service.getList()){
        System.out.println(nv.toString());
    }
    model.addAttribute("sv",service.getList());
    return "nhan-vien";
    }

    @PostMapping("/nhan-vien/add")
    public String add(HttpServletRequest request){
        String id = request.getParameter("id");
        String ten = request.getParameter("ten");
        String tuoi = request.getParameter("tuoi");
        String diaChi = request.getParameter("diaChi");
        String gioiTinh = request.getParameter("gioiTinh");
        NhanVien nv = new NhanVien(Integer.valueOf(id),ten,tuoi,diaChi,gioiTinh);
        service.getList().add(nv);
        return "redirect:/nhan-vien";
    }
}
