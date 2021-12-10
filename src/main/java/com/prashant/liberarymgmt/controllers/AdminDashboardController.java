package com.prashant.liberarymgmt.controllers;

import com.prashant.liberarymgmt.dto.AdminDashboardDTO;
import com.prashant.liberarymgmt.entities.ActiveBorrowers;
import com.prashant.liberarymgmt.repos.*;
import com.prashant.liberarymgmt.services.AdminDashboardService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDateTime;

@Controller
@RequiredArgsConstructor
@Slf4j
public class AdminDashboardController {

    private final AdminDashboardService adminDashboardService;

    @RequestMapping("/dashboard")
    public String showDashboard(ModelMap modelMap){
        log.info("Fetching Dashboard Page @ {}", LocalDateTime.now());

        AdminDashboardDTO response = adminDashboardService.getDashboardInformation();

        modelMap.addAttribute("totalBooks", response.getTotalBooks());
        modelMap.addAttribute("totalAvailableBooks", response.getTotalAvailableBooks());
        modelMap.addAttribute("totalStudents", response.getTotalStudents());
        modelMap.addAttribute("activeBorrowers", response.getCountActiveBorrower());
        modelMap.addAttribute("totalIssueBooks", response.getTotalIssueBooks());
        modelMap.addAttribute("totalFine", response.getTotalFine());

        return "dashboard";
    }
}
