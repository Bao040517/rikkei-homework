package Session6;

import java.util.Scanner;
import java.util.regex.Pattern;

public class qlnd6 {
    static Scanner sc = new Scanner(System.in);

    static String fullName = "";
    static String email = "";
    static String phone = "";
    static String password = "";

    public static void main(String[] args) {
        int choice;
        do {
            menu();
            choice = Integer.parseInt(sc.nextLine());

            switch (choice) {
                case 1:
                    nhapThongTin();
                    break;
                case 2:
                    chuanHoaTen();
                    break;
                case 3:
                    kiemTraEmail();
                    break;
                case 4:
                    kiemTraSoDienThoai();
                    break;
                case 5:
                    kiemTraMatKhau();
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
        System.out.println("\n********** QUẢN LÝ NGƯỜI DÙNG **********");
        System.out.println("1. Nhập thông tin người dùng");
        System.out.println("2. Chuẩn hóa họ tên");
        System.out.println("3. Kiểm tra email hợp lệ");
        System.out.println("4. Kiểm tra số điện thoại hợp lệ");
        System.out.println("5. Kiểm tra mật khẩu hợp lệ");
        System.out.println("6. Thoát");
        System.out.print("Lựa chọn của bạn: ");
    }

    // 1. Nhập thông tin
    static void nhapThongTin() {
        System.out.print("Nhập họ và tên: ");
        fullName = sc.nextLine();

        System.out.print("Nhập email: ");
        email = sc.nextLine();

        System.out.print("Nhập số điện thoại: ");
        phone = sc.nextLine();

        System.out.print("Nhập mật khẩu: ");
        password = sc.nextLine();
    }

    // 2. Chuẩn hóa họ tên (StringBuilder)
    static void chuanHoaTen() {
        if (fullName.isEmpty()) {
            System.out.println("Chưa nhập họ tên!");
            return;
        }

        String[] words = fullName.trim().toLowerCase().split("\\s+");
        StringBuilder sb = new StringBuilder();

        for (String w : words) {
            sb.append(Character.toUpperCase(w.charAt(0)))
                    .append(w.substring(1))
                    .append(" ");
        }

        fullName = sb.toString().trim();
        System.out.println("Họ tên sau chuẩn hóa: " + fullName);
    }

    // 3. Kiểm tra email
    static void kiemTraEmail() {
        String regexEmail = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        if (Pattern.matches(regexEmail, email)) {
            System.out.println("Email hợp lệ!");
        } else {
            System.out.println("Email KHÔNG hợp lệ!");
        }
    }

    // 4. Kiểm tra SĐT Việt Nam
    static void kiemTraSoDienThoai() {
        String regexPhone = "^(0|\\+84)(3|5|7|8|9)[0-9]{8}$";
        if (Pattern.matches(regexPhone, phone)) {
            System.out.println("Số điện thoại hợp lệ!");
        } else {
            System.out.println("Số điện thoại KHÔNG hợp lệ!");
        }
    }

    // 5. Kiểm tra mật khẩu mạnh
    static void kiemTraMatKhau() {
        String regexPassword =
                "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";

        if (Pattern.matches(regexPassword, password)) {
            System.out.println("Mật khẩu hợp lệ (mạnh)!");
        } else {
            System.out.println("Mật khẩu KHÔNG hợp lệ!");
            System.out.println("Yêu cầu: ≥8 ký tự, chữ hoa, chữ thường, số, ký tự đặc biệt");
        }
    }
}

