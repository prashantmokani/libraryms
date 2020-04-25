package com.prashant.liberarymgmt.services;

import com.prashant.liberarymgmt.dto.BorrowerRequest;
import com.prashant.liberarymgmt.entities.Book;
import com.prashant.liberarymgmt.entities.Borrowers;
import com.prashant.liberarymgmt.entities.Student;
import com.prashant.liberarymgmt.entities.Users;
import com.prashant.liberarymgmt.repos.BookRepository;
import com.prashant.liberarymgmt.repos.StudentRepository;
import com.prashant.liberarymgmt.repos.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BorrowerServiceImpl implements BorrowerService{
    @Autowired
    StudentRepository studentRepository;
    @Autowired
    BookRepository bookRepository;
    @Autowired
    UsersRepository usersRepository;
    @Override
    public Borrowers issueBook(BorrowerRequest borrowerRequest) {
        Book book = bookRepository.findById(borrowerRequest.getBookId()).get();
        Student student = studentRepository.findById(borrowerRequest.getStId()).get();
        Users users = usersRepository.findById(borrowerRequest.getSfId()).get();
        long bookAvailable = book.getBkAvailable();
        long noOfBooks = borrowerRequest.getNoCopies();
        Borrowers borrower = new Borrowers();
        borrower.setBook(book);
        borrower.setStudent(student);
        borrower.setUsers(users);
        borrower.setNoCopies(noOfBooks);
        borrower.setDueDate(borrowerRequest.getDueDate());
        borrower.setReleaseDate(borrowerRequest.getReleaseDate());

        book.setBkAvailable(bookAvailable-noOfBooks);
        bookRepository.save(book);
        return borrower;
    }
}
