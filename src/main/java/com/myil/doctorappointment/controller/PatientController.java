package com.myil.doctorappointment.controller;

import com.myil.doctorappointment.model.Patient;
import com.myil.doctorappointment.repository.PatientRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class PatientController {

    @Autowired
    private PatientRepository patientRepo;

    // Step 1: Show the patient-entry.jsp form
    @GetMapping("/patient-entry")
    public String showEntryForm() {
        return "patient-entry"; // loads patient-entry.jsp
    }

    // Step 2: Based on whether it's a first visit, show registration or report
    @PostMapping("/patient-redirect")
    public String handlePatientRedirect(@RequestParam("firstVisit") String firstVisit,
                                        @RequestParam("mobile") String mobile,
                                        Model model) {

        if ("yes".equalsIgnoreCase(firstVisit)) {
            return "patient-register"; // JSP for registration
        } else {
            Patient existing = patientRepo.findByMobile(mobile);
            if (existing != null) {
                model.addAttribute("patient", existing);
                return "patient-report"; // JSP for follow-up
            } else {
                model.addAttribute("error", "Patient not found.");
                return "patient-entry"; // Stay on entry page
            }
        }
    }

    
    @PostMapping("/register-patient")
    public String registerPatient(@ModelAttribute Patient patient, Model model) {
        patientRepo.save(patient);
        model.addAttribute("patient", patient); // Added to load into report.jsp
        return "patient-report"; // Show confirmation
    }
    
    @GetMapping("/patient-login")
    public String showLoginForm() {
        return "patient-login"; // returns the login form
    }

    @PostMapping("/patient-login")
    public String loginPatient(@RequestParam("mobile") String mobile,
                               Model model) {
        Patient patient = patientRepo.findByMobile(mobile);
        if (patient != null) {
            model.addAttribute("patient", patient);
            return "patient-report"; // success → show report with autofill
        } else {
            model.addAttribute("error", "Invalid mobile number or password");
            return "patient-login";
        }
    }



    @PostMapping("/handle-patient-choice")
    public String handlePatientChoice(@RequestParam("visitType") String visitType) {
        if ("first".equals(visitType)) {
            return "patient-register";
        } else if ("returning".equals(visitType)) {
            return "redirect:/patient-login"; // redirect to login
        } else {
            return "redirect:/";
        }
    }


    @GetMapping("/all-patients")
    public String showAllPatients(Model model) {
        List<Patient> all = patientRepo.findAll();
        model.addAttribute("patients", all);
        return "display-report";
    }
    
    
    
    @GetMapping("/doctor/login")
    public String showDoctorLoginForm() {
        return "doctor-login";
    }

    @PostMapping("/doctor/validate")
    public String validateDoctor(@RequestParam String username,
                                 @RequestParam String password,
                                 Model model) {
        if ("doctor".equals(username) && "123".equals(password)) {
            model.addAttribute("name", "Doctor");
            return "redirect:/ds";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "doctor-login";
        }
    }
    
    @GetMapping("/ds")
    public String showDoctorDashboard(Model model) {
        List<Patient> patients = patientRepo.findAll();
        model.addAttribute("patients", patients);
        model.addAttribute("name", "Doctor");
        return "doctor-dashboard";
    }
    
    @PostMapping("/mark-completed/{id}")
    @ResponseBody
    public String markCompleted(@PathVariable Long id) {
        Patient patient = patientRepo.findById(id).orElse(null);
        if (patient != null) {
            patient.setStatus("Completed");
            patientRepo.save(patient);
            return "success";
        }
        return "fail";
    }



}
