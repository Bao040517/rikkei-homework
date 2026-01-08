package Session12;

import Session12.business.ProductBusiness;
import Session12.entity.Product;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ProductBusiness productBusiness = new ProductBusiness();
        int choice;

        do {
            System.out.println("******************** QUẢN LÝ SẢN PHẨM ********************");
            System.out.println("1. Thêm sản phẩm");
            System.out.println("2. Danh sách sản phẩm");
            System.out.println("3. Cập nhật sản phẩm theo mã sản phẩm");
            System.out.println("4. Xóa sản phẩm theo mã sản phẩm");
            System.out.println("5. Tìm kiếm sản phẩm theo tên");
            System.out.println("6. Sắp xếp sản phẩm theo giá tăng dần");
            System.out.println("7. Sắp xếp sản phẩm theo số lượng giảm dần");
            System.out.println("8. Thoát");
            System.out.println("***********************************************************");
            System.out.print("Lựa chọn của bạn: ");

            choice = Integer.parseInt(scanner.nextLine());

            switch (choice) {
                case 1: {
                    Product product = new Product();
                    product.inputData(scanner);
                    productBusiness.addProduct(product);
                    break;
                }

                case 2:
                    productBusiness.displayProducts();
                    break;

                case 3: {
                    System.out.print("Nhập mã sản phẩm cần cập nhật: ");
                    int updateId = Integer.parseInt(scanner.nextLine());

                    Product updateProduct = new Product();
                    updateProduct.setProductId(updateId);
                    updateProduct.inputData(scanner);

                    productBusiness.updateProduct(updateProduct);
                    break;
                }

                case 4: {
                    System.out.print("Nhập mã sản phẩm cần xóa: ");
                    int deleteId = Integer.parseInt(scanner.nextLine());
                    productBusiness.deleteProduct(deleteId);
                    break;
                }

                case 5: {
                    System.out.print("Nhập tên sản phẩm cần tìm: ");
                    String keyword = scanner.nextLine();
                    productBusiness.searchByName(keyword);
                    break;
                }

                case 6:
                    productBusiness.sortByPriceAsc();
                    break;

                case 7:
                    productBusiness.sortByQuantityDesc();
                    break;

                case 8:
                    System.out.println("👋 Thoát chương trình");
                    break;

                default:
                    System.out.println("❌ Lựa chọn không hợp lệ");
            }
        } while (choice != 8);
    }
}
