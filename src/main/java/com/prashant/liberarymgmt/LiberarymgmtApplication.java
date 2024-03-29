package com.prashant.liberarymgmt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class LiberarymgmtApplication {

    public static void main(String[] args) {
        SpringApplication.run(LiberarymgmtApplication.class, args);
    }

}
