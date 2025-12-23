package Session8;

import java.util.Scanner;

public class MainProduct8 {

    static Scanner sc = new Scanner(System.in);
    static ProductMain8[] products = new ProductMain8[100];
    static int n = 0;

    public static void main(String[] args) {
        int choice;

        do {
            menu();
            choice = sc.nextInt();
            sc.nextLine(); // clear buffer

            switch (choice) {
                case 1:
                    themSanPham();
                    break;
                case 2:
                    hienThiDanhSach();
                    break;
                case 3:
                    timTheoKhoangGia();
                    break;
                case 4:
                    System.out.println(
                            "Tổng số sản phẩm đã tạo: "
                                    + ProductMain8.getTotalProduct()
                    );
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
        System.out.println("\n===== MENU SẢN PHẨM =====");
        System.out.println("1. Thêm sản phẩm mới");
        System.out.println("2. In danh sách sản phẩm");
        System.out.println("3. Tìm sản phẩm theo khoảng giá");
        System.out.println("4. Thống kê số sản phẩm đã tạo");
        System.out.println("0. Thoát");
        System.out.print("Lựa chọn của bạn: ");
    }

    static void themSanPham() {
        System.out.print("Nhập số lượng sản phẩm: ");
        int k = sc.nextInt();
        sc.nextLine();

        for (int i = 0; i < k; i++) {
            System.out.println("Sản phẩm " + (i + 1));
            products[n] = new ProductMain8();
            products[n].input();
            n++;
        }
    }

    static void hienThiDanhSach() {
        if (n == 0) {
            System.out.println("Danh sách rỗng!");
            return;
        }
        for (int i = 0; i < n; i++) {
            products[i].print();
        }
    }

    static void timTheoKhoangGia() {
        System.out.print("Nhập giá thấp nhất: ");
        double min = sc.nextDouble();

        System.out.print("Nhập giá cao nhất: ");
        double max = sc.nextDouble();

        boolean found = false;
        for (int i = 0; i < n; i++) {
            double price = products[i].getPrice();
            if (price >= min && price <= max) {
                products[i].print();
                found = true;
            }
        }

        if (!found) {
            System.out.println("Không có sản phẩm nào trong khoảng giá này!");
        }
    }
}

