package com.employee.management.dto;

import java.util.List;

public class EmployeeDto {


    private Long id;
    private String firstName;
    private String lastName;
    private String userName;
    private String gender;
    private int yearsOfExperience;
    private List<String> frameworks;
    private List<String> skillsKnown;

    public EmployeeDto() {
    }

    public EmployeeDto(Long id, String firstName, String lastName, String userName, String gender, int yearsOfExperience, List<String> frameworks, List<String> skillsKnown) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.gender = gender;
        this.yearsOfExperience = yearsOfExperience;
        this.frameworks = frameworks;
        this.skillsKnown = skillsKnown;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getYearsOfExperience() {
        return yearsOfExperience;
    }

    public void setYearsOfExperience(int yearsOfExperience) {
        this.yearsOfExperience = yearsOfExperience;
    }

    public List<String> getFrameworks() {
        return frameworks;
    }

    public void setFrameworks(List<String> frameworks) {
        this.frameworks = frameworks;
    }

    public List<String> getSkillsKnown() {
        return skillsKnown;
    }

    public void setSkillsKnown(List<String> skillsKnown) {
        this.skillsKnown = skillsKnown;
    }
}
