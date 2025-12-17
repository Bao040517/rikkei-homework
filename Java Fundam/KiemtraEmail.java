import java.sql.SQLOutput;
import java.util.Scanner;
import java.util.regex.Pattern;

public class KiemtraEmail {
    public static void main(String[] args) {
        String checkEmail = "^[a-zA-Z0-9._]{1,}@[a-zA-Z0-9.]+\\.[a-zA-Z]{2,6}$";
        System.out.println("Nhập vào Email");
        Scanner sc = new Scanner(System.in);
        String email = sc.nextLine();
        Pattern p = Pattern.compile(checkEmail);
        if (p.matcher(email).matches()) {
            System.out.println("Email đúng");
        }
        else {
            System.out.println("Email sai");
        }
    }
}
