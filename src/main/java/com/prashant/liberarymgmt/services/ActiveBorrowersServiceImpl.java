package com.prashant.liberarymgmt.services;

import com.prashant.liberarymgmt.dto.BorrowerRequest;
import com.prashant.liberarymgmt.entities.*;
import com.prashant.liberarymgmt.repos.BookRepository;
import com.prashant.liberarymgmt.repos.StudentRepository;
import com.prashant.liberarymgmt.repos.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ActiveBorrowersServiceImpl implements ActiveBorrowersService {
    @Autowired
    StudentRepository studentRepository;
    @Autowired
    BookRepository bookRepository;
    @Autowired
    UsersRepository usersRepository;
    @Override
    public ActiveBorrowers issueBook(BorrowerRequest borrowerRequest) {
        Book book = bookRepository.findById(borrowerRequest.getBookId()).get();
        Student student = studentRepository.findById(borrowerRequest.getStId()).get();
        Users users = usersRepository.findById(borrowerRequest.getSfId()).get();
        long noOfBooks = borrowerRequest.getNoCopies();
        ActiveBorrowers activeBorrowers = new ActiveBorrowers();
        activeBorrowers.setBook(book);
        activeBorrowers.setStudent(student);
        activeBorrowers.setUsers(users);
        activeBorrowers.setNoCopies(noOfBooks);
        activeBorrowers.setDueDate(borrowerRequest.getDueDate());
        activeBorrowers.setReleaseDate(borrowerRequest.getReleaseDate());
        return activeBorrowers;
    }
}
