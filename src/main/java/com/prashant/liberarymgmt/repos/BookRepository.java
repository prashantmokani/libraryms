package com.prashant.liberarymgmt.repos;

import com.prashant.liberarymgmt.entities.Book;
import com.prashant.liberarymgmt.entities.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface BookRepository extends JpaRepository<Book, Long> {
    //@Query("from Book where bkTitle =: bkTitle")
    List<Book> findAllBooksByBkTitleContaining(String searchText);
    @Query("SELECT SUM(b.bkCopies) FROM Book b")
    int totalBooks();
    @Query("SELECT SUM(b.bkAvailable) FROM Book b")
    int totalBooksAvailable();

}
