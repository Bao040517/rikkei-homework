package Session11.qlda.entity;

import java.io.Serializable;
import java.util.Scanner;
import java.util.regex.Pattern;

public class Employee implements Comparable<Employee>{
    @Override
    public int compareTo(Employee o) {
        return Double.compare(o.salary, this.salary);
    }

    private String employeeId;
    private String employeeName;
    private Role role;
    private double salary;

    // Regex
    private static final String REGEX_EMP_ID = "^E[0-9]{4}$";
    private static final String REGEX_EMP_NAME = "^.{6,30}$";

    private static final Pattern PATTERN_EMP_ID = Pattern.compile(REGEX_EMP_ID);
    private static final Pattern PATTERN_EMP_NAME = Pattern.compile(REGEX_EMP_NAME);

    // Constructor
    public Employee() {
    }

    public Employee(String employeeId, String employeeName, Role role, double salary) {
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.role = role;
        this.salary = salary;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public Role getRole() {
        return role;
    }

    public double getSalary() {
        return salary;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public void inputData(Scanner scanner, Employee[] arrEmp, int index) {

        while (true) {
            System.out.print("Nhập mã nhân viên (E0001): ");
            String id = scanner.nextLine();

            if (!PATTERN_EMP_ID.matcher(id).matches()) {
                System.out.println(" Mã nhân viên không hợp lệ!");
                continue;
            }

            boolean exists = false;
            for (int i = 0; i < index; i++) {
                if (arrEmp[i].getEmployeeId().equals(id)) {
                    exists = true;
                    break;
                }
            }

            if (!exists) {
                this.employeeId = id;
                break;
            } else {
                System.out.println(" Mã nhân viên đã tồn tại!");
            }
        }

        while (true) {
            System.out.print("Nhập tên nhân viên (6–30 ký tự): ");
            String name = scanner.nextLine();

            if (PATTERN_EMP_NAME.matcher(name).matches()) {
                this.employeeName = name;
                break;
            }
            System.out.println("Tên không hợp lệ!");
        }

        while (true) {
            System.out.print("Nhập role (DEV / TESTER / PM / BA): ");
            try {
                this.role = Role.valueOf(scanner.nextLine().toUpperCase());
                break;
            } catch (IllegalArgumentException e) {
                System.out.println("Role không hợp lệ!");
            }
        }

        while (true) {
            System.out.print("Nhập lương (>0): ");
            try {
                double sal = Double.parseDouble(scanner.nextLine());
                if (sal > 0) {
                    this.salary = sal;
                    break;
                }
                System.out.println(" Lương phải > 0!");
            } catch (NumberFormatException e) {
                System.out.println(" Lương phải là số!");
            }
        }
    }

    public void displayData() {
        System.out.println("Employee ID   : " + employeeId);
        System.out.println("Employee Name : " + employeeName);
        System.out.println("Role          : " + role);
        System.out.println("Salary        : " + salary);
    }
}
