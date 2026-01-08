package Session12.entity;

import java.util.Scanner;

public class Product {
    private static Integer productId;
    private String productName;
    private Float price;
    private String category;
    private Integer quantity;

    public Product() {
    }

    public Product(String category, Float price, String productName, Integer quantity) {
        this.category = category;
        this.price = price;
        this.productName = productName;
        this.quantity = quantity;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public static Integer getProductId() {
        return productId;
    }

    public static void setProductId(Integer productId) {
        Product.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public void inputData(Scanner scanner) {
        productId = Integer.parseInt(scanner.nextLine());
        productName = scanner.nextLine();
        price = Float.parseFloat(scanner.nextLine());
        category = scanner.nextLine();
        quantity = Integer.parseInt(scanner.nextLine());
    }

    @Override
    public String toString() {
        return "Product Id: " + productId +
                "\nProduct Name: " + productName +
                "\nPrice: " + price +
                "\nCategory: " + category +
                "\nQuantity: " + quantity;
    }

}
