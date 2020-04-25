package com.prashant.liberarymgmt.controllers;

import com.prashant.liberarymgmt.entities.Course;
import com.prashant.liberarymgmt.repos.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CourseController {
    @Autowired
    private CourseRepository courseRepository;

    @RequestMapping("/courseForm")
    public String showCourseForm(){
        return "forms/courseregform";
    }
    @RequestMapping("/saveCourse")
    public String saveCourse(@ModelAttribute("course")Course courses, ModelMap modelMap){
        courseRepository.save(courses);
        List<Course> courseList = courseRepository.findAll();
        modelMap.addAttribute("courseList",courseList);
        return "course/allcourses";
    }

    @RequestMapping("/showCourse")
    public String showCourses(ModelMap modelMap){
        List<Course> courseList = courseRepository.findAll();
        modelMap.addAttribute("courseList",courseList);
        return "course/allcourses";
    }

    @RequestMapping("/deleteCourse")
    public String deleteCourse(@RequestParam("cId")Long id){
        courseRepository.deleteById(id);
        return "redirect:showCourse";
    }

    @RequestMapping("/editCourse")
    public String editCourse(@RequestParam("cId") Long id,ModelMap modelMap){
        Course course = courseRepository.findById(id).get();
        modelMap.addAttribute("courseEntity",course);
        return "course/editcourse";
    }

    @RequestMapping("/cancelEditCourse")
    public String cancelEditCourse(){
        return "redirect:showCourse";
    }
    @RequestMapping("/saveEditedCourse")
    public String saveEditedCourse(@ModelAttribute Course course){
        courseRepository.save(course);
        return "redirect:showCourse";
    }
}
