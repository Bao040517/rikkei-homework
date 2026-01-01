package session71;

import java.util.Scanner;

public class Student {
    private Long studentId;
    private String studentName;
    private Integer studentAge;
    private String major;

    public Student() {}

    public Student(String major, Integer studentAge, Long studentId, String studentName) {
        this.major = major;
        this.studentAge = studentAge;
        this.studentId = studentId;
        this.studentName = studentName;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public Integer getStudentAge() {
        return studentAge;
    }

    public void setStudentAge(Integer studentAge) {
        this.studentAge = studentAge;
    }

    public Long getStudentId() {
        return studentId;
    }

    public void setStudentId(Long studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public void input(Scanner sc) {
        System.out.println("Nhập mã sinh viên: ");
        studentId = Long.parseLong(sc.nextLine());
        System.out.println("Nhập tên sinh viên: ");
        studentName = sc.nextLine();
        System.out.println("Nhập tuổi học sinh: ");
        studentAge = Integer.parseInt(sc.nextLine());
        System.out.println("Nhập chuyên ngành: ");
        major = sc.nextLine();
    }
    public void display() {
        System.out.println("Student Id: " + this.studentId);
        System.out.println("Student Name: " + this.studentName);
        System.out.println("Student Age: " + this.studentAge);
        System.out.println("Major: " + this.major);
    }
}
