package com.prashant.liberarymgmt.services;

import com.prashant.liberarymgmt.dto.BorrowerRequest;
import com.prashant.liberarymgmt.entities.Borrowers;

public interface BorrowerService {
    public Borrowers issueBook(BorrowerRequest borrowerRequest);
}
