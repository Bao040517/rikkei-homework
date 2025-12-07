import java.util.Scanner;

public class ngaytrongthang {
    public static void main(String[] args) {
        int a;
        System.out.println("Nhập vào tháng: ");
        Scanner sc = new Scanner(System.in);
        a = Integer.parseInt(sc.nextLine());
        switch(a) {
            case 1, 3, 5, 7, 8, 10, 12 -> System.out.println("Có 31 ngày");
            case 4, 6, 9, 11 -> System.out.println("Có 30 ngày");
            case 2 -> System.out.println("Có 28 hoặc 29 ngày");
            default -> System.out.println("Tháng không hợp lệ");
        }
    }
}
