package com.prashant.liberarymgmt.repos;

import com.prashant.liberarymgmt.entities.Course;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseRepository extends JpaRepository<Course, Long> {
}
