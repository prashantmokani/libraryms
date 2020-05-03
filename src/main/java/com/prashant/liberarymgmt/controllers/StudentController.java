package com.prashant.liberarymgmt.controllers;

import com.prashant.liberarymgmt.dto.StudentRequest;
import com.prashant.liberarymgmt.entities.Course;
import com.prashant.liberarymgmt.entities.Student;
import com.prashant.liberarymgmt.repos.CourseRepository;
import com.prashant.liberarymgmt.repos.StudentRepository;
import com.prashant.liberarymgmt.services.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private StudentRepository studentRepository;
    @Autowired
    private StudentService studentService;
    @Autowired
    private CourseRepository courseRepository;
    @RequestMapping("/studentReg")
    public String showStudentReg(ModelMap modelMap){
        List<Course> courseList = courseRepository.findAll();
        modelMap.addAttribute("course",courseList);
        return "forms/studentregform";
    }

    @RequestMapping("/saveStudent")
    public String saveStudent(StudentRequest studentRequest,ModelMap modelMap){
        Student student = studentService.saveStudent(studentRequest);
        List<Student> studentList = studentRepository.findAll();
        boolean flag=false;
        for(int i=0;i<studentList.size();i++){
            Student fromStudent = studentList.get(i);
            if(fromStudent.getStContact().equals(studentRequest.getStContact())){
                flag=true;
                break;
            }
        }
        if(flag){
            modelMap.addAttribute("sid","Contact number is already registered. Try again with different");
            List<Course> courseList = courseRepository.findAll();
            modelMap.addAttribute("course",courseList);
            return "forms/studentregform";
        }
        else {
            Student savedStudent = studentRepository.save(student);
            long sid = savedStudent.getId();
            modelMap.addAttribute("sid","Student is saved with id :"+sid);
            List<Course> courseList = courseRepository.findAll();
            modelMap.addAttribute("course",courseList);
            return "forms/studentregform";
        }
    }

    @RequestMapping("/viewAllStudents")
    public String showAllStudent(ModelMap modelMap){
        /*List<Student> studentList = studentService.showStudentList();*/

        Pageable pageable = PageRequest.of(0,10);
        Page<Student> page = studentRepository.findAll(pageable);
        int noOfElements  = page.getNumberOfElements();
        int noOfPages = page.getTotalPages();
        modelMap.addAttribute("stdList",page.getContent());
        modelMap.addAttribute("noOfPages",noOfPages);
        modelMap.addAttribute("currentPage", 1);
        return "student/studentlist";
    }
    /*@RequestMapping("/viewAllStudentPage")
    public String showAllStudentPage(@RequestParam("page") int pageNo, ModelMap modelMap){
        *//*List<Student> studentList = studentService.showStudentList();*//*

        Pageable pageable = PageRequest.of(pageNo-1,5);
        Page<Student> page = studentRepository.findAll(pageable);
        int noOfElements  = page.getNumberOfElements();
        int noOfPages = page.getTotalPages();
        modelMap.addAttribute("stdList",page.getContent());
        modelMap.addAttribute("noOfPages",noOfPages);
        modelMap.addAttribute("currentPage", pageNo);
        return "student/studentlist";
    }*/

    @RequestMapping(value = "/searchStudent",method = RequestMethod.POST)
    public String searchResult(@RequestParam("srchTxt")String srchTxt, ModelMap modelMap){
        List<Student> studentList = studentRepository.findAllStudents(srchTxt);
        modelMap.addAttribute("stdList",studentList);
        if(studentList.equals(null)){
            modelMap.addAttribute("error","Student with searched name not found.");
        }
        return "student/studentlist";
    }

    @RequestMapping("/editStudent")
    public String showEditStudentPage(@RequestParam("sId")Long studentId, ModelMap modelMap){
        Student studentData = studentRepository.findById(studentId).get();
        modelMap.addAttribute("studentData",studentData);
        List<Course> courseList = courseRepository.findAll();
        modelMap.addAttribute("course",courseList);
        return "student/editStudent";
    }

    @RequestMapping("/saveEditedStudent")
    public String editStudent(StudentRequest studentRequest,@RequestParam("id")Long sId){
        studentService.updateStudent(studentRequest,sId);
        return "redirect:viewAllStudents";
    }

    @RequestMapping("/deleteStudent")
    public String deleteStudent(@RequestParam Long sId){
        studentRepository.deleteById(sId);
        return "redirect:viewAllStudents";
    }

    @RequestMapping("/cancelStudentEdit")
    public String cancelEdit(){
        return "redirect:viewAllStudents";
    }
}
