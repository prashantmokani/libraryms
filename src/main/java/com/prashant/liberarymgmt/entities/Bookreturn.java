package com.prashant.liberarymgmt.entities;


import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "bookreturn")
public class Bookreturn extends AbstractEntity {


    private Date returnDate;
    private long fine;
    @OneToOne
    @JoinColumn(name="book_id")
    private Book book;
    @OneToOne
    @JoinColumn(name="s_id")
    private Student student;

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    public long getFine() {
        return fine;
    }

    public void setFine(long fine) {
        this.fine = fine;
    }
}
