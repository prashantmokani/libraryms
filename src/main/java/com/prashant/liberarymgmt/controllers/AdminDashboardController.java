package com.prashant.liberarymgmt.controllers;

import com.prashant.liberarymgmt.entities.ActiveBorrowers;
import com.prashant.liberarymgmt.repos.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminDashboardController {
    @Autowired
    BookRepository bookRepository;
    @Autowired
    StudentRepository studentRepository;
    @Autowired
    ActiveBorrowersRepository activeBorrowersRepository;
    @Autowired
    BorrowersRepository borrowersRepository;
    @Autowired
    private BookreturnRepository bookreturnRepository;
    @RequestMapping("/dashboard")
    public String showDashboard(ModelMap modelMap){
        int totalBooks = bookRepository.totalBooks();
        int toalAvailableBooks = bookRepository.totalBooksAvailable();
        int totalStudents = studentRepository.totalStudents();
        int countActiveBorrower = activeBorrowersRepository.countActiveBorrower();
        int totalIssueBooks = borrowersRepository.totalIssueBooks();
        int totalFine = bookreturnRepository.totalFineCollection();
        modelMap.addAttribute("totalBooks",totalBooks);
        modelMap.addAttribute("toalAvailableBooks",toalAvailableBooks);
        modelMap.addAttribute("totalStudents",totalStudents);
        modelMap.addAttribute("activeBorrowers",countActiveBorrower);
        modelMap.addAttribute("totalIssueBooks",totalIssueBooks);
        modelMap.addAttribute("totalFine",totalFine);

        return "dashboard";
    }
}
