import java.util.Scanner;

public class OutputDemo {
    public static void main(String[] args) {
        System.out.println("Nhập mã sinh viên");
        Scanner sc = new Scanner(System.in);
        int id = sc.nextInt();
        System.out.println("Nhập tên sinh viên");
        String name = sc.next();
        System.out.println("Nhập tuổi sinh viên");
        Integer age = sc.nextInt();
        System.out.println("Giới tính");
        Boolean sex = sc.nextBoolean();
        System.out.println("Địa chỉ");
        String address = sc.nextLine();

    }
}
