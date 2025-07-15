package com.myil.doctorappointment.repository;

import com.myil.doctorappointment.model.Patient;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PatientRepository extends JpaRepository<Patient, Long> {
    
    // To check if a patient exists by mobile number
    Patient findByMobile(String mobile);

    // To find a patient by name and password (for login)
    Patient findByNameAndPassword(String name, String password);

    // To find a patient using application ID (for report lookup)
    Patient findByApplicationId(String applicationId);
}
