package com.prashant.liberarymgmt.services;

import com.prashant.liberarymgmt.dto.AdminDashboardDTO;
import com.prashant.liberarymgmt.repos.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class AdminDashboardServiceImpl implements AdminDashboardService {

    private final BookRepository bookRepository;
    private final StudentRepository studentRepository;
    private final ActiveBorrowersRepository activeBorrowersRepository;
    private final BorrowersRepository borrowersRepository;
    private final BookreturnRepository bookreturnRepository;

    @Override
    public AdminDashboardDTO getDashboardInformation() {
        log.debug("Getting Dashboard information from repos");

        int totalBooks = bookRepository.totalBooks();
        int totalAvailableBooks = bookRepository.totalBooksAvailable();
        int totalStudents = studentRepository.totalStudents();
        int countActiveBorrower = activeBorrowersRepository.countActiveBorrower();
        int totalIssueBooks = borrowersRepository.totalIssueBooks();
        int totalFine = bookreturnRepository.totalFineCollection();

        return new AdminDashboardDTO(
                totalBooks,
                totalAvailableBooks,
                totalStudents,
                countActiveBorrower,
                totalIssueBooks,
                totalFine
        );
    }
}
