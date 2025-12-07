import java.util.Scanner;

public class quangduong {
    public static void main(String[] args) {
        float a, b;
        System.out.println("Nhập vào vận tốc: ");
        Scanner sc = new Scanner(System.in);
        a = Float.parseFloat(sc.nextLine());
        if(a < 0) {
            System.out.println("Vận tốc (Không được nhỏ hơn 0)");
        }
        System.out.println("Nhập vào thời gian");
        b = Float.parseFloat(sc.nextLine());
        if(b < 0) {
            System.out.println("Thời gian (Không được nhỏ hơn 0)");
        }
        System.out.printf("Quãng đường: %.2f", a * b);
    }
}
