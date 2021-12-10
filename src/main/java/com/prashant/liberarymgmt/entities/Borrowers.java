package com.prashant.liberarymgmt.entities;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import java.sql.Date;

@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "borrowers")
@Data
public class Borrowers extends BaseEntity {

    private static final long serialVersionUID = -5723184050909519934L;

    @OneToOne
    @JoinColumn(name = "book_id")
    private Book book;

    @OneToOne
    @JoinColumn(name = "st_id")
    private Student student;

    @OneToOne
    @JoinColumn(name = "sf_id")
    private Users users;

    private long noCopies;

    private Date releaseDate;

    private Date dueDate;
}
