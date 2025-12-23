package Session6;

import java.util.Scanner;
import java.util.Arrays;

public class qlsv6 {
    static Scanner sc = new Scanner(System.in);
    static double[] diem;
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
                    tinhDiemTrungBinh();
                    break;
                case 4:
                    timMaxMin();
                    break;
                case 5:
                    demDatTruot();
                    break;
                case 6:
                    sapXepTangDan();
                    break;
                case 7:
                    thongKeGioiXuatSac();
                    break;
                case 8:
                    System.out.println("Đã thoát chương trình!");
                    break;
                default:
                    System.out.println("Lựa chọn không hợp lệ!");
            }
        } while (choice != 8);
    }

    static void menu() {
        System.out.println("\n************** QUẢN LÝ ĐIỂM SV **************");
        System.out.println("1. Nhập danh sách điểm sinh viên");
        System.out.println("2. In danh sách điểm");
        System.out.println("3. Tính điểm trung bình của các sinh viên");
        System.out.println("4. Tìm điểm cao nhất và thấp nhất");
        System.out.println("5. Đếm số lượng sinh viên đạt và trượt");
        System.out.println("6. Sắp xếp điểm tăng dần");
        System.out.println("7. Thống kê số lượng sinh viên giỏi và xuất sắc");
        System.out.println("8. Thoát");
        System.out.print("Lựa chọn của bạn: ");
    }

    static void nhapDanhSach() {
        System.out.print("Nhập số lượng sinh viên: ");
        n = sc.nextInt();
        diem = new double[n];

        for (int i = 0; i < n; i++) {
            do {
                System.out.print("Nhập điểm sinh viên " + (i + 1) + ": ");
                diem[i] = sc.nextDouble();
            } while (diem[i] < 0 || diem[i] > 10);
        }
    }

    static void inDanhSach() {
        if (n == 0) {
            System.out.println("Chưa có dữ liệu!");
            return;
        }
        System.out.println("Danh sách điểm:");
        for (double d : diem) {
            System.out.print(d + "  ");
        }
        System.out.println();
    }

    static void tinhDiemTrungBinh() {
        if (n == 0) return;
        double sum = 0;
        for (double d : diem) sum += d;
        System.out.println("Điểm trung bình: " + (sum / n));
    }

    static void timMaxMin() {
        if (n == 0) return;
        double max = diem[0], min = diem[0];
        for (double d : diem) {
            if (d > max) max = d;
            if (d < min) min = d;
        }
        System.out.println("Điểm cao nhất: " + max);
        System.out.println("Điểm thấp nhất: " + min);
    }

    static void demDatTruot() {
        int dat = 0, truot = 0;
        for (double d : diem) {
            if (d >= 5) dat++;
            else truot++;
        }
        System.out.println("Số sinh viên đạt: " + dat);
        System.out.println("Số sinh viên trượt: " + truot);
    }

    static void sapXepTangDan() {
        Arrays.sort(diem);
        System.out.println("Đã sắp xếp điểm tăng dần!");
        inDanhSach();
    }

    static void thongKeGioiXuatSac() {
        int gioi = 0, xuatSac = 0;
        for (double d : diem) {
            if (d >= 9) xuatSac++;
            else if (d >= 8) gioi++;
        }
        System.out.println("Số SV giỏi: " + gioi);
        System.out.println("Số SV xuất sắc: " + xuatSac);
    }
}
