package com.prashant.liberarymgmt.controllers;

import com.prashant.liberarymgmt.entities.Book;
import com.prashant.liberarymgmt.entities.Student;
import com.prashant.liberarymgmt.repos.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BookController {

    @Autowired
    private BookRepository bookRepository;

    @RequestMapping("/showBookList")
    public String showBookList(ModelMap modelMap) {
        List<Book> bookList = bookRepository.findAll();
        modelMap.addAttribute("bookList", bookList);

        return "book/booklist";
    }

    @RequestMapping("/showBookRegForm")
    public String showBookForm() {
        return "book/bookregform";
    }

    @RequestMapping("/registerBook")
    public String bookRegistration(@ModelAttribute("book") Book book, ModelMap modelMap) {
        Book savedBook = bookRepository.save(book);
        modelMap.addAttribute("bookId", "Book is saved with ID : " + savedBook.getId());
        return "book/bookregform";
    }

    @RequestMapping("/deleteBook")
    public String deleteBookRecord(@RequestParam("bId") Long id){
        bookRepository.deleteById(id);
        return "redirect:showBookList";
    }

    @RequestMapping("/editBook")
    public String editBook(@RequestParam("bookId") Long bookId, ModelMap modelMap){
        Book bookEntity = bookRepository.findById(bookId).get();
        modelMap.addAttribute("bookEntity",bookEntity);
        return "book/editbookform";
    }
    @RequestMapping("/saveEditedBook")
    public String saveEditedBook(@ModelAttribute Book book){
        bookRepository.save(book);
        return "redirect:showBookList";
    }
    @RequestMapping("/cancelBook")
    public String cancelBook(){return "redirect:showBookList";}

    @RequestMapping("/searchBook")
    public String searchResult(@RequestParam("srchTxt")String srchTxt, ModelMap modelMap){
        List<Book> bookList = bookRepository.findAllBook(srchTxt);
        modelMap.addAttribute("bookList",bookList);
        modelMap.addAttribute("viewAllButton","<a href=\"showBookList\" role=\"button\" class=\"btn btn-danger m-4 text-center\">View All Books</a>");
        return "book/booklist";
    }

}
