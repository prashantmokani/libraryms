package com.prashant.liberarymgmt.dto;

import lombok.Data;

import java.sql.Date;

@Data
public class StudentRequest {

    private String firstName;

    private String middleName;

    private String lastName;

    private Long age;

    private Date birthDate;

    private String stGender;

    private String stContact;

    private Long stYear;

    private Long courseId;
}
