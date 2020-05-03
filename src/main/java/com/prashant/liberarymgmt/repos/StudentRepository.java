package com.prashant.liberarymgmt.repos;

import com.prashant.liberarymgmt.entities.Student;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface StudentRepository extends JpaRepository<Student,Long> {
    @Query("from Student where firstName = :firstName")
    List<Student> findAllStudents(@Param("firstName") String srchTxt);
    @Query("SELECT count (s.id) FROM Student  s")
    int totalStudents();
    Page<Student> findAll(Pageable pageable);
}
