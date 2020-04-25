package com.prashant.liberarymgmt.repos;

import com.prashant.liberarymgmt.entities.Users;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsersRepository extends JpaRepository<Users,Long> {
    Users findBySfEmail(String email);
}
