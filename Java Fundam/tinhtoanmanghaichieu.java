import java.util.Scanner;

public class tinhtoanmanghaichieu {
    static boolean check (int n){
        return n % 2 == 0;
    }
    public static void main(String[] args) {
        int sumchan = 0;
        int sumle = 0;
        int m,n;
        System.out.println("Nhập số hàng");
        Scanner sc = new Scanner(System.in);
        m = Integer.parseInt(sc.nextLine());
        System.out.println("Nhập số cột");
        n=Integer.parseInt(sc.nextLine());
        int[][] dimension = new int[m][n];
        for (int i = 0; i < m; i++) {
            for (int j = 0; j <n; j++) {
                System.out.printf("Phần tử [%d][%d]: ", i, j);
                    dimension[i][j] = Integer.parseInt(sc.nextLine());
                    if (check(dimension[i][j])) {
                        sumchan += dimension[i][j];
                    }
                    else{
                        sumle += dimension[i][j];
                    }

            }
        }
        System.out.println("Tổng các số chan: " + sumchan);
        System.out.println("Tổng các số lẻ: " + sumle);
    }
}
