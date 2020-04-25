package com.prashant.liberarymgmt.repos;

import com.prashant.liberarymgmt.entities.Borrowers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface BorrowersRepository extends JpaRepository<Borrowers,Long> {
    @Query("select sum (b.noCopies) from Borrowers b")
    int totalIssueBooks();
}
