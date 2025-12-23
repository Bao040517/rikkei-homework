package Session8;

import java.util.Scanner;

public class ProductMain8 {

    // Thuộc tính instance
    private int id;
    private String name;
    private double price;

    // Static: mã sản phẩm tự tăng
    private static int AUTO_ID = 1;

    // Hằng số mã kho
    public final String WAREHOUSE_CODE = "KHO-01";

    // Constructor không tham số
    public ProductMain8() {
        this.id = AUTO_ID;
        AUTO_ID++;
    }

    // Constructor có tham số
    public ProductMain8(String name, double price) {
        this(); // gọi constructor không tham số
        this.name = name;
        this.price = price;
    }

    // Nhập thông tin sản phẩm
    public void input() {
        Scanner sc = new Scanner(System.in);

        System.out.print("Nhập tên sản phẩm: ");
        this.name = sc.nextLine();

        System.out.print("Nhập giá sản phẩm: ");
        this.price = sc.nextDouble();
    }

    // In thông tin sản phẩm
    public void print() {
        System.out.println(
                "ID: " + id +
                        ", Name: " + name +
                        ", Price: " + price +
                        ", Warehouse: " + WAREHOUSE_CODE
        );
    }

    // Getter giá
    public double getPrice() {
        return price;
    }

    // Static: lấy số sản phẩm đã tạo
    public static int getTotalProduct() {
        return AUTO_ID - 1;
    }
}

