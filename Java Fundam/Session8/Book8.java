package Session8;

public class Book8 {
    String title;
    String author;
    double price;
    public Book8(String title, String author, double price) {
        this.title = title;
        this.author = author;
        this.price = price;
    }
    public static void main(String[] args) {
        Book8 book1 = new Book8("Clean Code", "Robert C. Martin", 25.5);
        System.out.println(
                "Title: " + book1.title +
                        ", Author: " + book1.author +
                        ", Price: " + book1.price
        );
    }
}

