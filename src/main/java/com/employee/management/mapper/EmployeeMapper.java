package com.employee.management.mapper;

import com.employee.management.dto.EmployeeDto;
import com.employee.management.entity.Employee;

public class EmployeeMapper {

    public static EmployeeDto mapToEmployeeDto(Employee employee) {

        return new EmployeeDto(
                employee.getId(),
                employee.getFirstName(),
                employee.getLastName(),
                employee.getUserName(),
                employee.getGender(),
                employee.getYearsOfExperience(),
                employee.getFrameworks(),
                employee.getSkillsKnown()
        );
    }

    public static Employee mapToEmployee(EmployeeDto employeeDto) {

        return new Employee(
                employeeDto.getId(),
                employeeDto.getFirstName(),
                employeeDto.getLastName(),
                employeeDto.getUserName(),
                employeeDto.getGender(),
                employeeDto.getYearsOfExperience(),
                employeeDto.getFrameworks(),
                employeeDto.getSkillsKnown()
        );
    }
}
