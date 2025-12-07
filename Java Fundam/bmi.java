import java.util.Scanner;

public class bmi {
    public static void main(String[] args) {
        float a, b;
        System.out.println("Nhập cân nặng (kg): ");
        Scanner sc = new Scanner(System.in);
        a = Float.parseFloat(sc.nextLine());
        System.out.println("Nhập chiều cao(m): ");
        b = Float.parseFloat(sc.nextLine());
        System.out.printf("Chỉ số BMI: %.2f", a/(b*b));
    }
}
