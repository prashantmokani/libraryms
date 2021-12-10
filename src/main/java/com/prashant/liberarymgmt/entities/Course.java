package com.prashant.liberarymgmt.entities;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "course")
@Data
public class Course extends BaseEntity {

    private static final long serialVersionUID = 5131266013600714696L;

    @Column(name = "course")
    private String courses;

    @Column(name = "branch")
    private String branch;

    @Column(name = "duration")
    private int duration;
}
