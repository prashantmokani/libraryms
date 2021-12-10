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
@Table(name = "student")
@Data
public class Student extends BaseEntity {

    private static final long serialVersionUID = 2388324488471323118L;

    private String firstName;

    private String middleName;

    private String lastName;

    private Long age;

    private Date birthDate;

    private String stGender;

    private String stContact;

    @OneToOne
    @JoinColumn(name="course_id")
    private Course course;

    private Long stYear;
}
