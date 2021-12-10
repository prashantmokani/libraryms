package com.prashant.liberarymgmt.entities;


import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import java.util.Date;

@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "bookreturn")
@Data
public class BookReturn extends BaseEntity {

    private static final long serialVersionUID = 3423034048062731414L;

    private Date returnDate;

    private Long fine;

    @OneToOne
    @JoinColumn(name="book_id")
    private Book book;

    @OneToOne
    @JoinColumn(name="s_id")
    private Student student;

}
