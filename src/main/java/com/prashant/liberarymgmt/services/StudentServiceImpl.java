package com.prashant.liberarymgmt.services;

import com.prashant.liberarymgmt.dto.StudentRequest;
import com.prashant.liberarymgmt.entities.Course;
import com.prashant.liberarymgmt.entities.Student;
import com.prashant.liberarymgmt.repos.CourseRepository;
import com.prashant.liberarymgmt.repos.StudentRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    CourseRepository courseRepository;
    @Autowired
    StudentRepository studentRepository;
    @Override
    public Student saveStudent(StudentRequest request) {
        long course_id = request.getCourseId();
        Course getCourse = courseRepository.findById(course_id).get();

        Student student = new Student();
        student.setCourse(getCourse);
        student.setAge(request.getAge());
        student.setBirthDate(request.getBirthDate());
        student.setFirstName(request.getFirstName());
        student.setLastName(request.getLastName());
        student.setMiddleName(request.getMiddleName());
        student.setStGender(request.getStGender());
        student.setStContact(request.getStContact());
        student.setStYear(request.getStYear());

        return student;
    }

    @Override
    public List<Student> showStudentList() {
        List<Student> studentList = studentRepository.findAll();
        return studentList;
    }

    @Override
    public void updateStudent(StudentRequest request,Long id) {
        Student student = saveStudent(request);
        student.setId(id);
        studentRepository.save(student);
    }

}
