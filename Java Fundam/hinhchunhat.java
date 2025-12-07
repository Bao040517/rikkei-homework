import java.util.Scanner;

public class hinhchunhat {
    public static void main(String[] args) {
        float a, b;
        System.out.println("Nhập chiều rộng");
        Scanner sc = new Scanner(System.in);
        a = Float.parseFloat(sc.nextLine());
        System.out.println("Nhập chiều rộng");
        b = Float.parseFloat(sc.nextLine());
        System.out.printf("Diện tích: %.2f\n",a*b);
        System.out.printf("Chu vi: %.2f",(a + b) * 2);

    }
}
