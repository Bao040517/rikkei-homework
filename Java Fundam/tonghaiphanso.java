import java.util.Scanner;

public class tonghaiphanso {
    public static void main(String[] args) {
        float a;
        float b;
        float c;
        float d;
        System.out.println("Nhập tử số của số thứ nhât a (a/b)");
        Scanner sc = new Scanner(System.in);
        a = Float.parseFloat(sc.nextLine());
        System.out.println("Nhập mẫu số của số thứ nhất b (a/b)");
        b = Float.parseFloat(sc.nextLine());
        System.out.println("Nhập tử số của số thứ hai c (c/d)");
        c = Float.parseFloat(sc.nextLine());
        System.out.println("Nhập mẫu số của số thứ hai d (c/d)");
        d = Float.parseFloat(sc.nextLine());
        System.out.println("--- Kết Quả ---");
        System.out.printf("%.0f/%.0f\n", ((a*d) +(b*c)),(b*d));
    }
}
