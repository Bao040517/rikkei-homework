import java.util.Scanner;

public class shinhtron {
    public static void main(String[] args) {
        System.out.println("Nhập bán kính hình tròn");
        Scanner sc = new Scanner(System.in);
        float r = Float.parseFloat(sc.nextLine());
        System.out.printf("Diện tích: %.2f", Math.PI * Math.pow(r,2));
    }
}
