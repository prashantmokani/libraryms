package com.prashant.liberarymgmt.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users extends AbstractEntity {
    @Column(name = "sf_fname")
    private String sfFname;
    @Column(name = "sf_lname")
    private String sfLname;
    @Column(name = "sf_contact")
    private String sfContact;
    @Column(name = "sf_email")
    private String sfEmail;
    @Column(name = "sf_address")
    private String sfAddress;
    @Column(name = "sf_pass")
    private String sfPass;

    //Getters And Setters
    public String getSfFname() {
        return sfFname;
    }

    public void setSfFname(String sfFname) {
        this.sfFname = sfFname;
    }

    public String getSfLname() {
        return sfLname;
    }

    public void setSfLname(String sfLname) {
        this.sfLname = sfLname;
    }

    public String getSfContact() {
        return sfContact;
    }

    public void setSfContact(String sfContact) {
        this.sfContact = sfContact;
    }

    public String getSfEmail() {
        return sfEmail;
    }

    public void setSfEmail(String sfEmail) {
        this.sfEmail = sfEmail;
    }

    public String getSfAddress() {
        return sfAddress;
    }

    public void setSfAddress(String sfAddress) {
        this.sfAddress = sfAddress;
    }
    public String getSfPass() {
        return sfPass;
    }

    public void setSfPass(String sfPass) {
        this.sfPass = sfPass;
    }


}
