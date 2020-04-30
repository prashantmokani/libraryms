package com.prashant.liberarymgmt.restControllers;

import com.prashant.liberarymgmt.dto.StudentUpdateRequest;
import com.prashant.liberarymgmt.entities.Course;
import com.prashant.liberarymgmt.entities.Student;
import com.prashant.liberarymgmt.repos.CourseRepository;
import com.prashant.liberarymgmt.repos.StudentRepository;
import com.prashant.liberarymgmt.services.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class StudentRestController {
    @Autowired
    StudentRepository studentRepository;
    @Autowired
    StudentService studentService;
    @Autowired
    CourseRepository courseRepository;
// GET => READ Rest Method to get all the student
    @RequestMapping("/getStudents/{id}")
    public Student findStudents(@PathVariable("id") Long id){
        return studentRepository.findById(id).get();
    }
    @RequestMapping("/getAllStudents")
    public List<Student> findAllStudent(){
        List <Student> allStudent = studentRepository.findAll();
        return allStudent;
    }
    //Update Student PUT METHOD
    @RequestMapping("/updateStudent")
    public Student updateStudent(@RequestBody StudentUpdateRequest studentUpdateRequest){
        Student student = studentRepository.findById(studentUpdateRequest.getId()).get();
        student.setFirstName(studentUpdateRequest.getFirstName());
        student.setMiddleName(studentUpdateRequest.getMiddleName());
        student.setLastName(studentUpdateRequest.getLastName());
        student.setAge(studentUpdateRequest.getAge());
        Course course = courseRepository.findById(studentUpdateRequest.getCourseid()).get();
        student.setCourse(course);
        student.setBirthDate(studentUpdateRequest.getBirthDate());
        student.setStGender(studentUpdateRequest.getStGender());
        student.setStContact(studentUpdateRequest.getStContact());
        student.setStYear(studentUpdateRequest.getStYear());
        return studentRepository.save(student);
    }

}
