import java.util.Scanner;

public class Book {
    Integer bookId;
    String bookName;
    Float bookPrice;
    String bookAuthor;
    Integer bookStatus;

    public Book( ) {
    }

    public Book(String bookAuthor, Integer bookId, String bookName, Float bookPrice, Integer bookStatus) {
        this.bookAuthor = bookAuthor;
        this.bookId = bookId;
        this.bookName = bookName;
        this.bookPrice = bookPrice;
        this.bookStatus = bookStatus;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public Float getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(Float bookPrice) {
        this.bookPrice = bookPrice;
    }

    public Integer getBookStatus() {
        return bookStatus;
    }

    public void setBookStatus(Integer bookStatus) {
        this.bookStatus = bookStatus;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }
    public void inputData(Scanner scanner) {
        System.out.println("Nhập mã sách");
        this.bookId = Integer.parseInt(scanner.nextLine());
        System.out.println("Nhâp tên sách");
        this.bookName = scanner.nextLine();
        System.out.println("Nhập giá sách");
        this.bookPrice = Float.parseFloat(scanner.nextLine());
        System.out.println("Nhâp tên tác giả");
        this.bookAuthor = scanner.nextLine();
        System.out.println("Trạng thái 1 là còn 0 là hết: ");
        this.bookStatus = Integer.parseInt(scanner.nextLine());
    }
    public void DisplayData() {
        System.out.println("Mã sách: " + this.bookId);
        System.out.println("Tên sách: " + this.bookName);
        System.out.println("Giá sách: " + this.bookPrice);
        System.out.println("Tác giả: " + this.bookAuthor);
        if (bookStatus != null && bookStatus == 1) {
            System.out.println("Trạng thái: Còn hàng");
        } else {
            System.out.println("Trạng thái: Hết hàng");
        }
    }
}
