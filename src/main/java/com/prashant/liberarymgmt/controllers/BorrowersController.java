package com.prashant.liberarymgmt.controllers;

import com.prashant.liberarymgmt.dto.BorrowerRequest;
import com.prashant.liberarymgmt.entities.ActiveBorrowers;
import com.prashant.liberarymgmt.entities.Book;
import com.prashant.liberarymgmt.entities.Borrowers;
import com.prashant.liberarymgmt.entities.Student;
import com.prashant.liberarymgmt.repos.ActiveBorrowersRepository;
import com.prashant.liberarymgmt.repos.BookRepository;
import com.prashant.liberarymgmt.repos.BorrowersRepository;
import com.prashant.liberarymgmt.repos.StudentRepository;
import com.prashant.liberarymgmt.services.ActiveBorrowersService;
import com.prashant.liberarymgmt.services.BorrowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BorrowersController {

    @Autowired
    private BookRepository bookRepository;
    @Autowired
    private StudentRepository studentRepository;
    @Autowired
    private BorrowersRepository borrowersRepository;
    @Autowired
    private BorrowerService borrowerService;
    @Autowired
    private ActiveBorrowersRepository activeBorrowersRepository;
    @Autowired
    private ActiveBorrowersService activeBorrowersService;

    @RequestMapping("/showIssueBook")
    public String showIssueBook(ModelMap modelMap){
        List<Book> bookList = bookRepository.findAll();
        modelMap.addAttribute("bookList",bookList);
        return "issueBook/bookListForIssue";
    }
    @RequestMapping("/searchBookList")
    public String searchBookIssue(@RequestParam("srchTxt")String srchTxt,ModelMap modelMap){
        List<Book> bookList = bookRepository.findAllBook(srchTxt);
        modelMap.addAttribute("bookList",bookList);
        modelMap.addAttribute("viewAllButton","<a href=\"showIssueBook\" role=\"button\" class=\"btn btn-danger m-4 text-center\">View All Books</a>");
        return "issueBook/bookListForIssue";
    }

    @RequestMapping("/bookIssue")
    public String showBorrowersForm(@RequestParam Long bookId, ModelMap modelMap){
        Book getOneBook = bookRepository.findById(bookId).get();
        List<Student> studentList = studentRepository.findAll();
        modelMap.addAttribute("bookData",getOneBook);
        modelMap.addAttribute("studentData",studentList);
        return "issueBook/borrowersForm";
    }



    @RequestMapping("/submitIssueBook")
    public String submitIssueBook(BorrowerRequest borrowerRequest,ModelMap modelMap){
        Borrowers borrowers = borrowersRepository.save(borrowerService.issueBook(borrowerRequest));
        ActiveBorrowers activeBorrowers = activeBorrowersRepository.save(activeBorrowersService.issueBook(borrowerRequest));
        modelMap.addAttribute("borrowerData",borrowers);
        return "issueBook/printDetail";
    }
}
