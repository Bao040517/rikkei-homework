import java.util.Scanner;

public class sapxepmangvatimso {

    static void selectionsort(int[] a) {
        for (int i = 0; i < a.length - 1; i++) {
            int maxIndex = i;
            for (int j = i + 1; j < a.length; j++) {
                if (a[j] > a[maxIndex]) {
                    maxIndex = j;
                }
            }
            int temp = a[i];
            a[i] = a[maxIndex];
            a[maxIndex] = temp;
        }
    }

    static void linearSearch(int[] a, int x) {
        for (int i = 0; i < a.length; i++) {
            if (a[i] == x) {
                System.out.println("Tìm kiếm tuyến tính: Số " + x + " có tại vị trí " + (i + 1));
                return;
            }
        }
        System.out.println("Tìm kiếm tuyến tính: Không tìm thấy số " + x);
    }

    static void binarySearch(int[] a, int x) {
        int low = 0, high = a.length - 1;

        while (low <= high) {
            int mid = (low + high) / 2;

            if (a[mid] == x) {
                System.out.println("Tìm kiếm nhị phân: Số " + x + " có tại vị trí " + (mid + 1));
                return;
            }

            if (a[mid] < x) {
                high = mid - 1;
            } else {
                low = mid + 1;
            }
        }

        System.out.println("Tìm kiếm nhị phân: Không tìm thấy số " + x);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Nhập số lượng phần tử của mảng: ");
        int n = sc.nextInt();

        int[] a = new int[n];
        System.out.println("Nhập các phần tử của mảng:");
        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }

        selectionsort(a);

        System.out.println("Mảng sau khi sắp xếp giảm dần:");
        for (int x : a) {
            System.out.print(x + " ");
        }
        System.out.println();

        System.out.print("Nhập số cần tìm: ");
        int x = sc.nextInt();

        linearSearch(a, x);
        binarySearch(a, x);

        sc.close();
    }
}
