import java.util.Scanner;

public class chantruoclesau {

    static boolean check(int a) {
        return a % 2 == 0;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int chan = 0;
        int le = 0;
        System.out.print("Nhập số lượng phần tử: ");
        int n = sc.nextInt();
        int[] a = new int[n];
        System.out.println("Nhập các phần tử:");
        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
            if (check(a[i])) chan++;
            else le++;
        }

        int[] sochan = new int[chan];
        int[] sole = new int[le];

        int indexChan = 0;
        int indexLe = 0;

        for (int i = 0; i < a.length; i++) {
            if (check(a[i])) {
                sochan[indexChan++] = a[i];
            } else {
                sole[indexLe++] = a[i];
            }
        }

        System.out.println("Mảng chẵn:");
        for (int x : sochan) {
            System.out.print(x + " ");
        }

        System.out.println("\nMảng lẻ:");
        for (int x : sole) {
            System.out.print(x + " ");
        }

        sc.close();
    }
}
