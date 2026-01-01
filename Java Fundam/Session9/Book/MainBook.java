package Session9.Book;

import java.util.ArrayList;
import java.util.List;

public class MainBook {
    public static void main(String[] args) {
        List<Book> books = new ArrayList<Book>();
        Book book1 = new Book();
        Book book2 = new Book();
        Book book3 = new Book();
        book1.setTitle("Book 1");
        book2.setTitle("Book 2");
        book3.setTitle("Book 3");
        book1.setAuthor("Author 1");
        book2.setAuthor("Author 2");
        book3.setAuthor("Author 3");
        book1.setPrice(120.00);
        book2.setPrice(20.00);
        book3.setPrice(20.00);
        books.add(book1);
        books.add(book2);
        books.add(book3);
        for (Book book : books) {
            book.printInfor();
            System.out.println(" ");
        }
    }
}
