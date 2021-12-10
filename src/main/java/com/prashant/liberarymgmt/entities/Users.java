package com.prashant.liberarymgmt.entities;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@EqualsAndHashCode(callSuper = true)
@Data
@Entity
@Table(name = "users")
public class Users extends BaseEntity {

    private static final long serialVersionUID = 1926460093350967487L;

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

}
