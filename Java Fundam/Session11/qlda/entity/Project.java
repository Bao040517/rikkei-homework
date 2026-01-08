package Session11.qlda.entity;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.Scanner;

public class Project {
    private String projectId;
    private String projectName;
    private LocalDate startDate;
    private LocalDate endDate;
    private Employee[] employees;
    private Status status;

    public Project() {
    }

    public Project(Employee[] employees, LocalDate endDate, String projectId, String projectName, Status status, LocalDate startDate) {
        this.employees = employees;
        this.endDate = endDate;
        this.projectId = projectId;
        this.projectName = projectName;
        this.status = status;
        this.startDate = startDate;
    }

    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public Employee[] getEmployees() {
        return employees;
    }

    public void setEmployees(Employee[] employees) {
        this.employees = employees;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }
    public void inputData(Scanner scanner, Project[] arrProject, int index, Employee[] arrEmp, int empIndex){
        arrProject[index].setProjectId(projectId);
        arrProject[index].setProjectName(projectName);
        arrProject[index].setStartDate(startDate);
        arrProject[index].setEndDate(endDate);
        arrProject[index].setEmployees(arrEmp);
        arrProject[index].setStatus(status);
    }
    public void displayDate(){
        System.out.println("Project Id: " + projectId);
        System.out.println("Project Name: " + projectName);
        System.out.println("Start Date: " + startDate);
        System.out.println("End Date: " + endDate);
        for(Employee e: employees){
            System.out.println("Employee Name: " + e.getEmployeeName());
        }
        System.out.println("Status: " + status);
    }
}
