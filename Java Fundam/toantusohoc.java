import java.util.Scanner;

public class toantusohoc {
    public static void main(String[] args) {
        float firstNumber;
        float secondNumber;
        System.out.println("Nhập số thứ nhất");
        Scanner sc = new Scanner(System.in);
        firstNumber = Float.parseFloat(sc.nextLine());
        System.out.println("Nhập số thứ hai");
        secondNumber = Float.parseFloat(sc.nextLine());
        System.out.println("--- Kết Quả ---");
        System.out.printf("firstNumber: %.2f\n", firstNumber);
        System.out.printf("secondNumber: %.2f\n", secondNumber);
        System.out.printf("Tổng: %.2f\n", firstNumber + secondNumber);
        System.out.printf("Hiệu: %.2f\n", firstNumber - secondNumber);
        System.out.printf("Tích: %.2f\n", firstNumber * secondNumber);
        System.out.printf("Thương: %.2f\n", firstNumber / secondNumber);
        System.out.printf("Phần dư: %.2f\n", firstNumber % secondNumber);
    }
}
