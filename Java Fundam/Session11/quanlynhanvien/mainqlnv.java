package Session11.quanlynhanvien;

import java.util.ArrayList;
import java.util.List;

public class mainqlnv {
    public static void main(String[] args) {
        List<Employee> employeeList = new ArrayList<>();
        FullTimeEmployee fullTimeEmployee = new FullTimeEmployee();
        fullTimeEmployee.setId(1);
        fullTimeEmployee.setName("Dương Văn A");
        fullTimeEmployee.calculate();
        PartTimeEmployee partTimeEmployee = new PartTimeEmployee();
        partTimeEmployee.setId(2);
        partTimeEmployee.setName("Dương Văn B");
        partTimeEmployee.setWorkingHour(3.2);
        partTimeEmployee.calculate();
        employeeList.add(fullTimeEmployee);
        employeeList.add(partTimeEmployee);
        for (Employee employee : employeeList) {
            employee.showInfo();
            System.out.println("Lương: " + employee.calculate());
            if(employee instanceof BonusEligible){
                System.out.println("Bonus Eligible " + ((BonusEligible) employee).calculateBonus());
            }
        }
    }
}
