package Session11.qlda.presentation;

import Session11.qlda.entity.Employee;
import Session11.qlda.entity.Role;

import java.sql.SQLOutput;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ProjectManagement {
    public static void main(String[] args) {
        Integer choice;
        Scanner sc = new Scanner(System.in);
        Employee[] arrEmp = new Employee[100];
        int index = 0;
        do{
            System.out.println("--Quản lý dự án--");
            System.out.println("1. Quản lý nhân viên");
            System.out.println("2. Quản lý dự án");
            System.out.println("3. Thoát");
            System.out.println("Lựa chọn của bạn: ");
            choice = Integer.parseInt(sc.nextLine());
            String staffId;
            Integer choice2;
            switch (choice) {
                case 1:
                {
                    do {
                        System.out.println("==============================================");
                        System.out.println("=========== QUẢN LÝ NHÂN VIÊN ================");
                        System.out.println("1. Thêm nhân viên");
                        System.out.println("2. Hiển thị danh sách nhân viên");
                        System.out.println("3. Cập nhật thông tin nhân viên");
                        System.out.println("4. Xóa nhân viên");
                        System.out.println("5. Tìm kiếm nhân viên theo tên");
                        System.out.println("6. Sắp xếp nhân viên theo lương giảm dần");
                        System.out.println("7. Thoát");
                        System.out.println("==============================================");
                        System.out.print("Lựa chọn của bạn: ");
                        choice2 = Integer.parseInt(sc.nextLine());
                        Integer choice3;
                        switch (choice2) {
                            case 1: {
                                System.out.println("Thêm nhân viên");
                                Employee employee1 = new Employee();
                                employee1.inputData(sc, arrEmp, index);
                                arrEmp[index] = employee1;
                                index++;
                                break;
                            }
                            case 2: {
                                System.out.println("Hiển thị danh sách nhân viên");
                                for (int i = 0; i < index; i++) {
                                    arrEmp[i].displayData();
                                    System.out.println("\n");
                                }
                                break;
                            }
                            case 3: {
                                System.out.println("Cập nhật thông tin nhân viên");
                                System.out.println("Nhập vào mã nhân viên");
                                staffId = sc.nextLine();
                                for (int i = 0; i < index; i++) {
                                    if (arrEmp[i].getEmployeeId().equals(staffId)) {
                                        do {
                                            System.out.println("1. Cập nhật tên");
                                            System.out.println("2. Cập nhật role");
                                            System.out.println("3. Cập nhật luơng: ");
                                            System.out.println("4. Thoát");
                                            choice3 = Integer.parseInt(sc.nextLine());
                                            switch (choice3) {
                                                case 1: {
                                                    System.out.println("Nhập tên mới");
                                                    arrEmp[i].setEmployeeName(sc.nextLine());
                                                    break;
                                                }
                                                case 2: {
                                                    System.out.println("Nhập role mới");
                                                    arrEmp[i].setRole(Role.valueOf(sc.nextLine().toUpperCase()));
                                                    break;
                                                }
                                                case 3: {
                                                    System.out.println("Nhập nhật lương");
                                                    arrEmp[i].setSalary(Double.parseDouble(sc.nextLine()));
                                                    break;
                                                }
                                            }
                                        } while (choice3 != 4);
                                    }
                                }
                                break;
                            }

                            case 4: {
                                System.out.println("Xoá nhân viên");
                                System.out.println("Nhập staffId");
                                String delStaffId = sc.nextLine();
                                for (int i = 0; i < index; i++) {
                                    if (arrEmp[i].getEmployeeId().equals(delStaffId)) {
                                        arrEmp[i] = null;
                                    }
                                }
                                break;
                            }
                            case 5: {
                                System.out.println("Tìm nhân viên theo tên");
                                System.out.println("Nhập tên");
                                String findName = sc.nextLine();
                                for (Employee e : arrEmp) {
                                    if (e.getEmployeeName().equals(findName)) {
                                        e.displayData();
                                    } else {
                                        System.out.println("Không tìm thay nhân viên tên " + findName);
                                    }
                                }
                                break;
                            }
                            case 6:
                                System.out.println("Danh sách nhân viên theo lương giảm dần:");
                                Arrays.sort(arrEmp, 0, index,
                                        Comparator.comparingDouble(Employee::getSalary).reversed()
                                );
                                for (int i = 0; i < index; i++) {
                                    arrEmp[i].displayData();
                                    System.out.println("\n");
                                }
                                break;
                        }
                    }while (choice2 != 7);
                break;
                }
            }
        }while(choice!=3);
    }
}
