package com.prashant.liberarymgmt.dto;

import lombok.Data;

import java.sql.Date;

@Data
public class BorrowerRequest {

    private Long bookId;

    private Long stId;

    private Long sfId;

    private Long noCopies;

    private Date releaseDate;

    private Date dueDate;
}
