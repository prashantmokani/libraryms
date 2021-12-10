package com.prashant.liberarymgmt.controllers;

import com.prashant.liberarymgmt.entities.ActiveBorrowers;
import com.prashant.liberarymgmt.entities.Book;
import com.prashant.liberarymgmt.entities.BookReturn;
import com.prashant.liberarymgmt.repos.ActiveBorrowersRepository;
import com.prashant.liberarymgmt.repos.BookRepository;
import com.prashant.liberarymgmt.repos.BookreturnRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;
import java.util.concurrent.TimeUnit;

@Controller
@RequiredArgsConstructor
public class BookReturnController {

    private final ActiveBorrowersRepository activeBorrowersRepository;
    private final BookreturnRepository bookreturnRepository;
    private final BookRepository bookRepository;

    @RequestMapping("/returnBookList")
    public String showActiveBookList(ModelMap modelMap){
        List<ActiveBorrowers> bList = activeBorrowersRepository.findAll();
        modelMap.addAttribute("bList",bList);
        return "returnBook/activeBookList";
    }
    @RequestMapping("/returnBook")
    public String returnBook(@RequestParam Long issueId,ModelMap modelMap){
        boolean flag;

        ActiveBorrowers borrowers = activeBorrowersRepository.findById(issueId).get();

        long millis=System.currentTimeMillis();
        java.sql.Date currentDate=new java.sql.Date(millis);
        java.sql.Date dueDate = borrowers.getDueDate();

        long noOfBooks = borrowers.getNoCopies();

        Book book = borrowers.getBook();

        long bookAvailable = book.getBkAvailable()+noOfBooks;
        book.setBkAvailable(bookAvailable);

        BookReturn bookreturn = new BookReturn();
        bookreturn.setStudent(borrowers.getStudent());
        bookreturn.setBook(book);
        bookreturn.setReturnDate(currentDate);

        long duration  = currentDate.getTime() - dueDate.getTime();
        long days = TimeUnit.MILLISECONDS.toDays(duration);

        if(dueDate.compareTo(currentDate) > 0L){
            bookreturn.setFine(0L);
            flag=false;
        }
        else if(dueDate.compareTo(currentDate) == 0L){
            bookreturn.setFine(0L);
            flag=false;
        }
        else if(days <= 15 && days >= 1) {
            bookreturn.setFine(50*borrowers.getNoCopies());
            flag=true;
        }
        else {
            bookreturn.setFine((book.getBkCost()*borrowers.getNoCopies()));
            flag=true;
        }
        bookRepository.save(book);
        bookreturnRepository.save(bookreturn);
        activeBorrowersRepository.delete(borrowers);
        if(flag){
            modelMap.addAttribute("fineAmount",bookreturn.getFine());
            return "returnBook/finePaymentPage";
        }
        else
            return "redirect:returnBookList";
    }
}
