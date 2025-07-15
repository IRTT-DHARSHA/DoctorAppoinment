package com.myil.doctorappointment.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.myil.doctorappointment.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {
    Admin findByNameAndPassword(String name, String password);
}
