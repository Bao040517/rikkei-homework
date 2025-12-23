package Session8;

import java.util.Scanner;

public class StudentMain8 {
    private int id;
    private String name;
    private double gpa;
    private static int countStudent = 0;
    public final double SCORE_FACTOR = 0.25;
    public StudentMain8() {
        countStudent++;
    }
    public StudentMain8(int id, String name, double gpa) {
        this();
        this.id = id;
        this.name = name;
        this.gpa = gpa;
    }
    public void input() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Nhập ID: ");
        this.id = sc.nextInt();
        sc.nextLine();
        System.out.print("Nhập tên: ");
        this.name = sc.nextLine();

        System.out.print("Nhập GPA: ");
        this.gpa = sc.nextDouble();
    }
    public void print() {
        System.out.println(
                "ID: " + id +
                        ", Name: " + name +
                        ", GPA: " + gpa
        );
    }
    public double getGpa() {
        return gpa;
    }
    public static int getTotalStudent() {
        return countStudent;
    }
}

