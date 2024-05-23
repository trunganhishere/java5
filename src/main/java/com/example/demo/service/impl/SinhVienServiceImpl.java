package com.example.demo.service.impl;

import com.example.demo.model.SinhVien;
import com.example.demo.service.SinhVienService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
@Service
public class SinhVienServiceImpl implements SinhVienService {

    ArrayList<SinhVien> ls = new ArrayList<>();

    public SinhVienServiceImpl(){
        ls.add(new SinhVien(1,"Nam","Nam","Nam Dinh","aasdsa"));
        ls.add(new SinhVien(2,"Nam","Nam","Nam Dinh","aasdsa"));
    }

    @Override
    public ArrayList<SinhVien> getList() {
        return ls;
    }
}
