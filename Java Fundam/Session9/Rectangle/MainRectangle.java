package Session9.Rectangle;

import java.util.Scanner;

public class MainRectangle {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Rectangle rectangle = new Rectangle();
        rectangle.setHeight(Long.parseLong(sc.nextLine()));
        rectangle.setWidth(Long.parseLong(sc.nextLine()));
        rectangle.printInfo();
    }
}
