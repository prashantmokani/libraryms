package com.prashant.liberarymgmt.services;

import com.prashant.liberarymgmt.entities.Users;
import com.prashant.liberarymgmt.repos.UsersRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private UsersRepository usersRepository;
    @Override
    public boolean checkEmail(String email) {

        return false;
    }
}
