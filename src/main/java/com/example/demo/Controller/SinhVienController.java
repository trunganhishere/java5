package com.example.demo.Controller;

import com.example.demo.model.SinhVien;
import com.example.demo.repository.SinhVienRepository;
import com.example.demo.service.SinhVienService;
import com.example.demo.service.impl.SinhVienServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Controller
public class SinhVienController {
//    SinhVienService service = new SinhVienServiceImpl();


    @Autowired
    SinhVienRepository rp;


//    @GetMapping("/sinh-vien")
//    public String sinhVien(HttpServletRequest request){
////        ArrayList<SinhVien> ls = service.getList();
//        for (SinhVien sv : ls){
//            System.out.println(sv.toString());
//        }
//        request.setAttribute("sv",ls);
//        return "sinh-vien";
//    }

    @GetMapping("/sinh-vien")
    public String sinhVien(Model model){
//        ArrayList<SinhVien> ls = service.getList();
        model.addAttribute("sv", rp.findAll());
        return "sinh-vien";
    }

    @PostMapping("/sinh-vien/add")
    public String add(
//            HttpServletRequest request,
            @ModelAttribute("sv") SinhVien sv
    ){
//        String id = request.getParameter("id");
//        String hoTen = request.getParameter("hoTen");
//        String diaChi = request.getParameter("diaChi");
//        String gioiTinh = request.getParameter("gioiTinh");
//        String trangThai = request.getParameter("trangThai");
//        SinhVien sv = new SinhVien(Integer.valueOf(id),hoTen,diaChi,gioiTinh,trangThai);
        rp.findAll().add(sv);
        return "redirect:/sinh-vien";
    }

    @GetMapping("/sinh-vien/remove")
    public String remove(
            @RequestParam("id") Integer id
    ){
        rp.delete(rp.getOne(id));
        return "redirect:/sinh-vien";
    }

    @GetMapping("/sinh-vien/detail")
    public String detail(Model model,
            @RequestParam("id") Integer id
    ){
        SinhVien sv = new SinhVien();
        for(int i = 0 ; i < rp.findAll().size() ; i ++){
            if(id.equals(rp.findAll().get(i).getId())){
                sv = rp.findAll().get(i);
            }
        }
        model.addAttribute("sv",rp.findAll());
        model.addAttribute("detail",sv);
        return "sinh-vien";
    }

    @PostMapping("/sinh-vien/update")
    public String update(
            @ModelAttribute("sv") SinhVien sinhVien
    ){
        for(SinhVien sv : rp.findAll()){
            if(String.valueOf(sv.getId()).equals(sinhVien.getId())){
                sv.setDiaChi(sinhVien.getDiaChi());
                sv.setGioiTinh(sinhVien.getGioiTinh());
                sv.setTrangThai(sinhVien.getTrangThai());
                sv.setHoTen(sinhVien.getHoTen());
            }
        }
        return "redirect:/sinh-vien";
    }

}
