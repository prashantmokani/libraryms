package com.prashant.liberarymgmt.services;

import com.prashant.liberarymgmt.dto.BorrowerRequest;
import com.prashant.liberarymgmt.entities.ActiveBorrowers;
import com.prashant.liberarymgmt.entities.Borrowers;

public interface ActiveBorrowersService {
    public ActiveBorrowers issueBook(BorrowerRequest borrowerRequest);
}
