import java.util.Scanner;

public class checkTriangle {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a, b, c;
        System.out.println("Nhập vào 3 cạnh của tam giác: ");
        a = Integer.parseInt(sc.nextLine());
        b = Integer.parseInt(sc.nextLine());
        c = Integer.parseInt(sc.nextLine());
        if (a + b <= c || a + c <= b || b + c <= a) {
            System.out.println("Ba cạnh không tạo thành tam giác.");
        } else {
            if (a == b && b == c) {
                System.out.println("Tam giác đều");
            } else if (a == b || a == c || b == c) {
                System.out.println("Tam giác cân");
            } else if (a * a == b * b + c * c
                    || b * b == a * a + c * c
                    || c * c == a * a + b * b) {
                System.out.println("Tam giác vuông");
            } else {
                System.out.println("Tam giác thường");
            }
        }
    }
}
