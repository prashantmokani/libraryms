package com.prashant.liberarymgmt.repos;

import com.prashant.liberarymgmt.entities.Bookreturn;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface BookreturnRepository extends JpaRepository<Bookreturn, Long> {
    @Query("select  sum(br.fine) from Bookreturn  br")
    int totalFineCollection();
}
