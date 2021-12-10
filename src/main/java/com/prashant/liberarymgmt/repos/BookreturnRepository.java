package com.prashant.liberarymgmt.repos;

import com.prashant.liberarymgmt.entities.BookReturn;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface BookreturnRepository extends JpaRepository<BookReturn, Long> {
    @Query("select sum(br.fine) from BookReturn  br")
    int totalFineCollection();
}
