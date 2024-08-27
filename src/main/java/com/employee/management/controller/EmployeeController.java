package com.employee.management.controller;

import com.employee.management.dto.EmployeeDto;
import com.employee.management.service.EmployeeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


@Controller
public class EmployeeController {

    private static final Logger LOGGER = LoggerFactory.getLogger(EmployeeController.class);

    private EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }


    @GetMapping("/add-employee")
    public ModelAndView addStudent() {
        ModelAndView mav = new ModelAndView("add_employee");
        mav.addObject("command", new EmployeeDto());
        return mav;
    }

    @PostMapping("/save-employee")
    public ModelAndView createEmployee(Model model, @ModelAttribute EmployeeDto employeeDto) {
        List<String> errors = validation(employeeDto);
        if (!errors.isEmpty()) {
            ModelAndView mavError = new ModelAndView("error");
            mavError.addObject("errors", errors);
            return mavError;
        }
        employeeService.createEmployee(employeeDto);
        ModelAndView mav = new ModelAndView("index");
        List<EmployeeDto> employees = employeeService.getAllEmployee();
        mav.addObject("employees", employees);
        return mav;

    }

    @RequestMapping("/")
    public ModelAndView getAllEmployee(Model model) {
        ModelAndView mav = new ModelAndView("index");
        List<EmployeeDto> employees = employeeService.getAllEmployee();
        mav.addObject("employees", employees);
        return mav;
    }

    @GetMapping("/employee-update/{id}")
    public ModelAndView updateEmployee(@PathVariable("id") Long employeeId) {

        ModelAndView mav = new ModelAndView("add_employee");
        EmployeeDto employeeById = employeeService.getEmployeeById(employeeId);
        mav.addObject("command", employeeById);
        return mav;

    }

    @GetMapping("/employee-delete/{id}")
    public String deleteEmployee(@PathVariable("id") Long employeeId) {
        employeeService.deleteEmployee(employeeId);
        LOGGER.info("Deleted employee successfully");
        return "redirect:/";

    }

    private List<String> validation(EmployeeDto employeeDto) {

        List<String> errors = new ArrayList<>();
        if (!StringUtils.hasText(employeeDto.getFirstName())) {
            errors.add("First name should not be empty");
        }
        if (!StringUtils.hasText(employeeDto.getLastName())) {
            errors.add("Last name should not be empty");
        }
        if (!StringUtils.hasText(employeeDto.getUserName())) {
            errors.add("User name should not be empty");
        }
        if (CollectionUtils.isEmpty(employeeDto.getFrameworks())) {
            errors.add("Select at least one framework");
        }
        if (CollectionUtils.isEmpty(employeeDto.getSkillsKnown())) {
            errors.add("Select at least one skill");
        }
        return errors;
    }

}
