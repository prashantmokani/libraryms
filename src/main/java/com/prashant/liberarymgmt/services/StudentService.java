package com.prashant.liberarymgmt.services;

import com.prashant.liberarymgmt.dto.StudentRequest;
import com.prashant.liberarymgmt.entities.Student;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface StudentService {
    public Student saveStudent(StudentRequest request);
    public List<Student> showStudentList();
    public void updateStudent(StudentRequest request,Long id);

}
