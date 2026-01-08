package Session12.business;

import Session12.entity.Product;

import java.util.ArrayList;
import java.util.Comparator;

public class ProductBusiness {

    private static ArrayList<Product> productList = new ArrayList<>();

    public void addProduct(Product product) {
        if (product.getProductName().length() < 10 || product.getProductName().length() > 50) {
            System.out.println("Tên sản phẩm phải từ 10 đến 50 ký tự");
            return;
        }

        if (isNameExist(product.getProductName())) {
            System.out.println("Tên sản phẩm đã tồn tại");
            return;
        }

        if (product.getPrice() <= 0) {
            System.out.println("Giá sản phẩm phải lớn hơn 0");
            return;
        }

        if (product.getCategory().length() > 200) {
            System.out.println(" Danh mục không được quá 200 ký tự");
            return;
        }

        if (product.getQuantity() < 0) {
            System.out.println("Số lượng tồn kho không hợp lệ");
            return;
        }

        productList.add(product);
        System.out.println("✅ Thêm sản phẩm thành công");
    }

    public void displayProducts() {
        if (productList.isEmpty()) {
            System.out.println("Danh sách sản phẩm trống");
        }
        for (Product p : productList) {
            System.out.println(p);
        }
    }

    public void updateProduct(Product product) {
        Product oldProduct = findProductById(product.getProductId());

        if (oldProduct == null) {
            System.out.println("Không tìm thấy sản phẩm cần cập nhật");
            return;
        }

        oldProduct.setProductName(product.getProductName());
        oldProduct.setPrice(product.getPrice());
        oldProduct.setCategory(product.getCategory());
        oldProduct.setQuantity(product.getQuantity());

        System.out.println("Cập nhật sản phẩm thành công");
    }

    public void deleteProduct(int productId) {
        Product product = findProductById(productId);

        if (product == null) {
            System.out.println("Không tìm thấy sản phẩm cần xóa");
            return;
        }

        productList.remove(product);
        System.out.println("Xóa sản phẩm thành công");
    }

    private static Product findProductById(int productId) {
        for (Product p : productList) {
            if (p.getProductId() == productId) {
                return p;
            }
        }
        return null;
    }

    private static boolean isNameExist(String name) {
        for (Product p : productList) {
            if (p.getProductName().equalsIgnoreCase(name)) {
                return true;
            }
        }
        return false;
    }

    public void sortByPriceAsc() {
        productList.sort(Comparator.comparing(Product::getPrice));
        System.out.println("Đã sắp xếp theo giá tăng dần");
    }
    public void searchByName(String keyword) {
        boolean found = false;

        for (Product p : productList) {
            if (p.getProductName().toLowerCase()
                    .contains(keyword.toLowerCase())) {
                System.out.println(p);
                found = true;
            }
        }

        if (!found) {
            System.out.println("Không tìm thấy sản phẩm phù hợp");
        }
    }

    public void sortByQuantityDesc() {
        productList.sort((a, b) -> b.getQuantity() - a.getQuantity());
        System.out.println("Đã sắp xếp theo số lượng giảm dần");
    }
}
