package Session6;

import java.util.Scanner;
import java.util.regex.Pattern;
import java.util.Arrays;

public class qlbsx6 {
    static Scanner sc = new Scanner(System.in);
    static String[] bienSo = new String[100];
    static int n = 0;

    public static void main(String[] args) {
        int choice;
        do {
            menu();
            choice = Integer.parseInt(sc.nextLine());
            switch (choice) {
                case 1:
                    themBienSo();
                    break;
                case 2:
                    hienThi();
                    break;
                case 3:
                    timKiemChinhXac();
                    break;
                case 4:
                    timTheoMaTinh();
                    break;
                case 5:
                    sapXepTangDan();
                    break;
                case 6:
                    System.out.println("Thoát chương trình!");
                    break;
                default:
                    System.out.println("Lựa chọn không hợp lệ!");
            }
        } while (choice != 6);
    }

    static void menu() {
        System.out.println("\n********** QUẢN LÝ BIỂN SỐ XE **********");
        System.out.println("1. Thêm các biển số xe");
        System.out.println("2. Hiển thị danh sách biển số xe");
        System.out.println("3. Tìm kiếm biển số xe");
        System.out.println("4. Tìm biển số xe theo mã tỉnh");
        System.out.println("5. Sắp xếp biển số xe tăng dần");
        System.out.println("6. Thoát");
        System.out.print("Lựa chọn của bạn: ");
    }

    // 1. Thêm biển số
    static void themBienSo() {
        System.out.print("Nhập số lượng biển số: ");
        int k = Integer.parseInt(sc.nextLine());

        String regex = "^(\\d{2})([A-Z])-\\d{3}\\.\\d{2}$";

        for (int i = 0; i < k; i++) {
            while (true) {
                System.out.print("Nhập biển số xe: ");
                String bs = sc.nextLine().toUpperCase();

                if (Pattern.matches(regex, bs)) {
                    bienSo[n++] = bs;
                    break;
                } else {
                    System.out.println("Biển số KHÔNG hợp lệ! (VD: 30F-123.45)");
                }
            }
        }
    }

    // 2. Hiển thị
    static void hienThi() {
        if (n == 0) {
            System.out.println("Danh sách rỗng!");
            return;
        }
        System.out.println("Danh sách biển số xe:");
        for (int i = 0; i < n; i++) {
            System.out.println(bienSo[i]);
        }
    }

    // 3. Tìm kiếm chính xác
    static void timKiemChinhXac() {
        System.out.print("Nhập biển số cần tìm: ");
        String key = sc.nextLine().toUpperCase();

        boolean found = false;
        for (int i = 0; i < n; i++) {
            if (bienSo[i].equals(key)) {
                System.out.println("Tìm thấy: " + bienSo[i]);
                found = true;
                break;
            }
        }

        if (!found) {
            System.out.println("Không tìm thấy biển số!");
        }
    }

    // 4. Tìm theo mã tỉnh
    static void timTheoMaTinh() {
        System.out.print("Nhập mã tỉnh (VD: 29, 30, 51): ");
        String maTinh = sc.nextLine();

        boolean found = false;
        System.out.println("Các biển số thuộc tỉnh " + maTinh + ":");
        for (int i = 0; i < n; i++) {
            if (bienSo[i].startsWith(maTinh)) {
                System.out.println(bienSo[i]);
                found = true;
            }
        }

        if (!found) {
            System.out.println("Không có biển số nào thuộc tỉnh này!");
        }
    }

    // 5. Sắp xếp tăng dần
    static void sapXepTangDan() {
        Arrays.sort(bienSo, 0, n);
        System.out.println("Đã sắp xếp biển số tăng dần!");
        hienThi();
    }
}

