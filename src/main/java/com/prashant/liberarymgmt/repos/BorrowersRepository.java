package com.prashant.liberarymgmt.repos;

import com.prashant.liberarymgmt.entities.Borrowers;
import com.prashant.liberarymgmt.entities.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface BorrowersRepository extends JpaRepository<Borrowers,Long> {
    @Query("select sum (b.noCopies) from Borrowers b")
    int totalIssueBooks();

    @Query("from Borrowers where student = :student")
    List<Borrowers> findAllIssuedBookByStudent(@Param("student") Student student);

}
