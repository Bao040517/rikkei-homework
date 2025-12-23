package Session8;

import java.util.Scanner;

public class MainStudent8 {

    static Scanner sc = new Scanner(System.in);
    static StudentMain8[] students = new StudentMain8[100];
    static int n = 0;

    public static void main(String[] args) {
        int choice;

        do {
            menu();
            choice = sc.nextInt();

            switch (choice) {
                case 1:
                    nhapDanhSach();
                    break;
                case 2:
                    inDanhSach();
                    break;
                case 3:
                    timGpaCaoNhat();
                    break;
                case 4:
                    System.out.println("Tổng số sinh viên đã tạo: "
                            + StudentMain8.getTotalStudent());
                    break;
                case 0:
                    System.out.println("Thoát chương trình!");
                    break;
                default:
                    System.out.println("Lựa chọn không hợp lệ!");
            }
        } while (choice != 0);
    }

    static void menu() {
        System.out.println("\n===== MENU SINH VIÊN =====");
        System.out.println("1. Nhập danh sách sinh viên");
        System.out.println("2. In danh sách sinh viên");
        System.out.println("3. Tìm sinh viên GPA cao nhất");
        System.out.println("4. In tổng số sinh viên đã tạo");
        System.out.println("0. Thoát");
        System.out.print("Lựa chọn của bạn: ");
    }

    static void nhapDanhSach() {
        System.out.print("Nhập số lượng sinh viên: ");
        int k = sc.nextInt();

        for (int i = 0; i < k; i++) {
            System.out.println("Sinh viên " + (i + 1));
            students[n] = new StudentMain8();
            students[n].input();
            n++;
        }
    }

    static void inDanhSach() {
        if (n == 0) {
            System.out.println("Danh sách rỗng!");
            return;
        }
        for (int i = 0; i < n; i++) {
            students[i].print();
        }
    }

    static void timGpaCaoNhat() {
        if (n == 0) {
            System.out.println("Chưa có sinh viên!");
            return;
        }

        double max = students[0].getGpa();
        for (int i = 1; i < n; i++) {
            if (students[i].getGpa() > max) {
                max = students[i].getGpa();
            }
        }

        System.out.println("Sinh viên có GPA cao nhất:");
        for (int i = 0; i < n; i++) {
            if (students[i].getGpa() == max) {
                students[i].print();
            }
        }
    }
}

