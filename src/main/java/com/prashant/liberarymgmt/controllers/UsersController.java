package com.prashant.liberarymgmt.controllers;

import com.prashant.liberarymgmt.entities.Book;
import com.prashant.liberarymgmt.entities.Users;
import com.prashant.liberarymgmt.repos.BookRepository;
import com.prashant.liberarymgmt.repos.UsersRepository;
import com.prashant.liberarymgmt.services.UserService;
import com.prashant.liberarymgmt.services.UserServiceImpl;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Iterator;
import java.util.List;

@Controller
public class UsersController {

    @Autowired
    private UsersRepository usersRepository;
    @Autowired
    private UserService userService;


    @RequestMapping("/signup")
    public String showSignUpPage() {
        return "login/signup";
    }

    @RequestMapping("/regUser")
    public String registerUser(@ModelAttribute("users") Users users, ModelMap modelMap) {
        String email = users.getSfEmail();
        List<Users> usersList = usersRepository.findAll();
        boolean flag = false;
        if (usersList != null) {
            for (int i = 0; i < usersList.size(); i++) {
                Users tempUser = usersList.get(i);
                if (tempUser.getSfEmail().equals(email)) {
                    flag = true;
                    break;
                }
            }
        }
        if (flag) {
            modelMap.addAttribute("error", "Email Id is already registered try with different Email");
            return "login/signup";
        } else {
            usersRepository.save(users);
            return "login/login";
        }
    }
    @RequestMapping("/")
    public String homePage(){
        return "redirect:login";
    }

    @RequestMapping("/login")
    public String showloginPage() {
        return "login/login";
    }

    @RequestMapping(value = "/authUser", method = RequestMethod.POST)
    public String authenticateUser(@RequestParam("sf_email") String username, @RequestParam("sf_pass") String password, ModelMap modelMap) {

        Users users = usersRepository.findBySfEmail(username);
        if (users == null) {
            modelMap.addAttribute("errorMsg", "Username or Password isn't Correct!!");
            return "login/login";
        }
        if (users.getSfPass().equals(password)) {
            return "dashboard";
        } else {
            modelMap.addAttribute("errorMsg", "Username or Password isn't Correct!!");
            return "login/login";
        }
    }


}
