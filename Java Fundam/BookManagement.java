import org.w3c.dom.ls.LSOutput;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class BookManagement {
    public static void main(String[] args) {
        Integer choice;
        Scanner sc = new Scanner(System.in);
        List<Book> books = new ArrayList<>();
        do {
            System.out.println(" ******************BOOK MANAGEMENT******************");
            System.out.println("1. Danh sách sách");
            System.out.println("2. Thêm mới sách");
            System.out.println("3. Cập nhật sách");
            System.out.println("4. Xóa sách");
            System.out.println("5. Tìm kiếm sách theo tên (tương đối)");
            System.out.println("6. Sắp xếp sách theo giá tăng dần");
            System.out.println("7. Thoát");
            System.out.println("Lựa chọn của bạn");
            switch (choice = Integer.parseInt(sc.nextLine())) {
                case 1:
                    if (books.size() == 0) {
                        System.out.println("Không có sách");
                    }
                    else{
                        for (Book book : books) {
                            book.DisplayData();
                        }
                    }
                    break;
                case 2:
                    Book book = new Book();
                    book.inputData(sc);
                    books.add(book);
                    System.out.println("Thêm thanh công");
                    break;
                case 3:
                    System.out.println("Cập nhật sách");
                    
                    int choices = Integer.parseInt(sc.nextLine());



            }
        }
        while (choice != 7);
    }}
