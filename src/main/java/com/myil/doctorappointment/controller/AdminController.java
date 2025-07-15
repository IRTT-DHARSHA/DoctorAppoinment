package com.myil.doctorappointment.controller;

import com.myil.doctorappointment.model.Admin;
import com.myil.doctorappointment.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AdminController {

    @Autowired
    private AdminRepository adminRepo;

    // Admin Register - show the form
    @GetMapping("/admin-register")
    public String showRegisterForm() {
        return "admin-register";  // Loads admin-register.jsp
    }

    // Admin Register - handle form submission
    @PostMapping("/register-admin")
    public String registerAdmin(@ModelAttribute Admin admin, Model model) {
        adminRepo.save(admin);
        model.addAttribute("message", "Registration Successful! Please login.");
        return "admin-login"; // Redirect to login page after register
    }

    // Admin Login - show the form
    @GetMapping("/admin-login")
    public String showLoginForm() {
        return "admin-login";  // Loads admin-login.jsp
    }

    // Admin Login - handle form login
    @PostMapping("/login-admin")
    public String loginAdmin(@RequestParam String name,
                             @RequestParam String password,
                             Model model) {

        Admin existing = adminRepo.findByNameAndPassword(name, password);

        if (existing != null) {
            model.addAttribute("admin", existing);
            return "admin-dashboard";  // This JSP will display admin info
        } else {
            model.addAttribute("error", "Invalid credentials!");
            return "admin-login";
        }
    }
}
