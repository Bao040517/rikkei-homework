package session71;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class StudentManagement {
    public static Student findById(Long studentId, List<Student> studentList) {
        for (Student student : studentList) {
            if(student.getStudentId().equals(studentId)) {
                return student;
            }
        }
        return null;
    }
    public static void deleteById(Long studentId, List<Student> studentList) {
        StudentManagement  studentManagement = new StudentManagement();
        Student student = studentManagement.findById(studentId, studentList);
        if(student != null) {
            studentList.remove(student);
        }
        else  {
            System.out.println("Student with id: " + studentId + " not found");
        }
    }
    public static Student findByStudentName(String studentName, List<Student> studentList) {
        for (Student student : studentList) {
            if(studentName.equals(student.getStudentName())) {
                return student;
            }
        }
        return null;
    }


    public static void main(String[] args) {
        List<Student> students = new ArrayList<>();
        Scanner sc = new Scanner(System.in);
        int choice;
        int choice2;
        do {
            System.out.println("*********************QUẢN LÝ SINH VIÊN********************");
            System.out.println("1. Hiển thị danh sách sinh viên");
            System.out.println("2. Thêm sinh viên");
            System.out.println("3. Cập nhật thông tin sinh viên theo mã sinh viên");
            System.out.println("4. Xóa sinh viên theo mã sinh viên");
            System.out.println("5. Tìm sinh viên theo tên sinh viên");
            System.out.println("6. Thoát");

            System.out.print("Nhập lựa chọn: ");
            choice = Integer.parseInt(sc.nextLine());
            switch (choice) {
                case 1:
                    if(students.size() > 0) {
                        for(Student student : students) {
                            student.display();
                        }
                    }
                    else {
                        System.out.println("Chưa có sinh viên trong danh sách ");
                    }
                    break;
                case 2:
                    Student student = new Student();
                    student.input(sc);
                    students.add(student);
                    break;
                case 3:
                    System.out.println("Nhập vào studentId ");
                    Long studentId = Long.parseLong(sc.nextLine());
                    if(findById(studentId,students) != null) {
                        do{
                            System.out.println("1. Cập nhật tên sinh viên " + studentId);
                            System.out.println("2. Cập nhật tuổi sinh viên " + studentId);
                            System.out.println("3. Cập nhật chuyên ngành sinh viên" + studentId);
                            System.out.println("4. Thoát cập nhật");
                            choice2 = Integer.parseInt(sc.nextLine());
                            Student studentUpdate = findById(studentId, students);
                            switch (choice2) {
                                case 1:
                                    System.out.println("Nhập Tên Mới");
                                    studentUpdate.setStudentName(sc.nextLine());
                                    break;
                                case 2:
                                    System.out.println("Nhập tuổi mới");
                                    studentUpdate.setStudentAge(Integer.parseInt(sc.nextLine()));
                                    break;
                                case 3:
                                    System.out.println("Nhập ngành mới");
                                    studentUpdate.setMajor(sc.nextLine());
                                    break;
                            }
                        }while(choice2 != 4);

                    }
                    else {
                        System.out.println("Không tồn tại sinh viên");
                    }
                    break;
                case 4:
                    System.out.println("Nhập vào studentId để xoá ");
                    deleteById(Long.parseLong(sc.nextLine()), students);
                    break;
                case 5:
                    System.out.println("Nhập tên sinh viên để tìm kiếm");
                    findByStudentName(sc.nextLine(), students);
            }

        } while (choice != 6);
    }
}
