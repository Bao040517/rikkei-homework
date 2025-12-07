import java.util.Scanner;

public class tongchusonguyen {
    public static void main(String[] args) {
        int n,b;
        String a;
        int tongchusonguyen = 0;
        System.out.println("Nhập vào n: ");
        Scanner sc = new Scanner(System.in);
        a = sc.nextLine();
        b = a.length();
        n = Math.abs(Integer.parseInt(a));
//        System.out.println(a);
        int tmp = n;
        for (int i = 1; i <= b; i++) {
            tongchusonguyen = tongchusonguyen + tmp % 10;
            tmp /= 10;
        }
        System.out.printf("Tổng các chữ số là: %d", tongchusonguyen);
    }
}
