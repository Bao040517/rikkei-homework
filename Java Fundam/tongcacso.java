import java.util.Scanner;

public class tongcacso {
    public static void main(String[] args) {
        Integer n;
        Integer a = 0;
        System.out.println("Nhập n");
        Scanner sc = new Scanner(System.in);
        n = Integer.parseInt(sc.nextLine());
        for (int i = 1; i <= n; i++) {
            a = a + i;
        }
        System.out.printf("Tổng các số từ 1 đến %d là: %d",n,a);
    }
}
