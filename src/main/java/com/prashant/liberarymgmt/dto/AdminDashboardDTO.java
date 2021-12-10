package com.prashant.liberarymgmt.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminDashboardDTO {
    private int totalBooks;
    private int totalAvailableBooks;
    private int totalStudents;
    private int countActiveBorrower;
    private int totalIssueBooks;
    private int totalFine;
}
