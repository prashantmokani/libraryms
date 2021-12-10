package com.prashant.liberarymgmt.entities;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;
import javax.persistence.Table;

@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "book")
@Data
public class Book extends BaseEntity {

    private static final long serialVersionUID = -6890862372496322679L;

    private String bkTitle;

    private Long bkEdition;

    private String bkAuthor;

    private String bkPublisher;

    private Long bkCopies;

    private Long bkCost;

    private Long bkAvailable;
}
