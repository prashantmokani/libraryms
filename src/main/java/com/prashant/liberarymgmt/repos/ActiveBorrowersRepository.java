package com.prashant.liberarymgmt.repos;

import com.prashant.liberarymgmt.entities.ActiveBorrowers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ActiveBorrowersRepository extends JpaRepository<ActiveBorrowers,Long> {
    @Query("select count (a.id) from ActiveBorrowers a")
    int countActiveBorrower();
}
