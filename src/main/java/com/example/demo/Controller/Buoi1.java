package com.example.demo.Controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Buoi1 {
        @GetMapping("/login")
        public String index(){
            return "index";
        }

        @PostMapping("/login")
        public String login(HttpServletRequest request){
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if(password.equals("admin") && username.equals("admin")){
                return "thanh-cong";
            }else {
                return "error";
            }
        }
}
