package com.example.demo.service.impl;

import com.example.demo.model.NhanVien;
import com.example.demo.service.NhanVienService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
@Service
public class NhanVienServiceImpl implements NhanVienService {
    ArrayList<NhanVien> ls = new ArrayList<>();

    public NhanVienServiceImpl(){
        ls.add(new NhanVien(1,"adas","sfsdf","sdfsf","dsffds"));
        ls.add(new NhanVien(2,"adas","sfsdf","sdfsf","dsffds"));
    }
    public ArrayList<NhanVien> getList(){
        return ls;
    }
}
