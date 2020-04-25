package com.prashant.liberarymgmt.dto;

import java.sql.Date;

public class BorrowerRequest {
    private long bookId;
    private long stId;
    private long sfId;
    private long noCopies;
    private Date releaseDate;
    private Date dueDate;

    public long getBookId() {
        return bookId;
    }

    public void setBookId(long bookId) {
        this.bookId = bookId;
    }

    public long getStId() {
        return stId;
    }

    public void setStId(long stId) {
        this.stId = stId;
    }

    public long getSfId() {
        return sfId;
    }

    public void setSfId(long sfId) {
        this.sfId = sfId;
    }

    public long getNoCopies() {
        return noCopies;
    }

    public void setNoCopies(long noCopies) {
        this.noCopies = noCopies;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public Date getDueDate() {
        return dueDate;
    }

    public void setDueDate(Date dueDate) {
        this.dueDate = dueDate;
    }
}
