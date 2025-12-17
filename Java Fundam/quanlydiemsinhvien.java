import java.sql.SQLOutput;
import java.util.Scanner;

public class quanlydiemsinhvien {
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
    static void bubbleSort(int[] a) {
        for (int i = 0; i < a.length - 1; i++) {
            for (int j = 0; j < a.length - 1 - i; j++) {
                if (a[j] < a[j + 1]) { // giảm dần
                    int temp = a[j];
                    a[j] = a[j + 1];
                    a[j + 1] = temp;
                }
            }
        }
    }
    static void binarySearch(int[] a, int x) {
        int low = 0;
        int high = a.length - 1;
        while (low <= high) {
            int mid = (low + high) / 2;
            if (a[mid] == x) {
                System.out.printf("Tìm thấy điểm [%d] tại vị trí thứ [%d]%n", x, mid);
                return;
            } else if (a[mid] > x) {
                high = mid - 1;
            } else {
                low = mid + 1;
            }
        }
        System.out.println("Không tìm thấy điểm " + x);
    }
    static void linearSearch(int[] a, int x) {
        boolean found = false;

        for (int i = 0; i < a.length; i++) {
            if (a[i] == x) {
                System.out.println("Tìm thấy điểm " + x + " tại vị trí thứ " + (i + 1));
                found = true;
            }
        }
        if (!found) {
            System.out.println("Không tìm thấy điểm " + x);
        }
    }



    public static void main(String[] args) {
        int choose;
        int[] diemsv = {9,8,9,8,10,10,9,8};
        do {
            Scanner sc = new Scanner(System.in);
            System.out.println("--Quản lý điểm sinh viên--");
            System.out.println("1. Xem tất cả điểm");
            System.out.println("2. Sắp xep điểm");
            System.out.println("3. Tìm kiếm điểm");
            System.out.println("4. Thống kê điểm");
            System.out.println("5. Thoát");
            System.out.println("Lựa chọn của bạn: ");
            switch (choose = Integer.parseInt(sc.nextLine())) {
                case 1:
                    for (int i = 0; i < diemsv.length; i++) {
                        System.out.printf("Điểm sinh viên thứ [%d]: %d \n", (i + 1), diemsv[i]);
                    }
                    break;
                case 2:
                    System.out.println("1.Tăng dần");
                    System.out.println("2.Giảm dần");
                    int choice = Integer.parseInt(sc.nextLine());
                    if (choice == 1) {
                        selectionsort(diemsv);
                        System.out.println("Đã sắp xếp tăng dần");
                    } else if (choice == 2) {
                        bubbleSort(diemsv);
                        System.out.println("Đã sắp xếp giảm dần");
                    }
                    break;
                case 3:
                    System.out.println("Nhập vào số điểm muốn tìm kiếm");
                    int find = Integer.parseInt(sc.nextLine());
                    binarySearch(diemsv, find);
                    linearSearch(diemsv, find);
                    break;
                case 4:
                    float sum = 0;
                    for (int i = 0; i < diemsv.length; i++) {
                        sum += (float) diemsv[i];
                    }
                    float avg = sum / diemsv.length;
                    System.out.printf("Điểm trung bình của lớp: [%.2f] \n", avg);
                    Float min = Float.MAX_VALUE;
                    Float max = Float.MIN_VALUE;
                    int count = 0;
                    for (int i = 0; i < diemsv.length; i++) {
                        if (diemsv[i] < min) {
                            min = (float) diemsv[i];
                        }
                        if (diemsv[i] > max) {
                            max = (float) diemsv[i];
                        }
                        if(diemsv[i] > avg){
                            count++;
                        }
                    }
                    System.out.println("Điểm cao nhất: " + max);
                    System.out.println("Điểm thấp nhất: " + min);
                    System.out.println("Số lượng học sinh trên điểm trung bình: " + count);
                    break;
            }
        }
        while (choose != 5);
    }
}
