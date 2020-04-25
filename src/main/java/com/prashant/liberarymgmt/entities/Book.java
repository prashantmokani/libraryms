package com.prashant.liberarymgmt.entities;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "book")
public class Book extends AbstractEntity {

    private String bkTitle;
    private long bkEdition;
    private String bkAuthor;
    private String bkPublisher;
    private long bkCopies;
    private long bkCost;
    private long bkAvailable;

    public String getBkTitle() {
        return bkTitle;
    }

    public void setBkTitle(String bkTitle) {
        this.bkTitle = bkTitle;
    }

    public long getBkEdition() {
        return bkEdition;
    }

    public void setBkEdition(long bkEdition) {
        this.bkEdition = bkEdition;
    }

    public String getBkAuthor() {
        return bkAuthor;
    }

    public void setBkAuthor(String bkAuthor) {
        this.bkAuthor = bkAuthor;
    }

    public String getBkPublisher() {
        return bkPublisher;
    }

    public void setBkPublisher(String bkPublisher) {
        this.bkPublisher = bkPublisher;
    }

    public long getBkCopies() {
        return bkCopies;
    }

    public void setBkCopies(long bkCopies) {
        this.bkCopies = bkCopies;
    }

    public long getBkCost() {
        return bkCost;
    }

    public void setBkCost(long bkCost) {
        this.bkCost = bkCost;
    }
    public long getBkAvailable() {
        return bkAvailable;
    }

    public void setBkAvailable(long bkAvailable) {
        this.bkAvailable = bkAvailable;
    }
}
