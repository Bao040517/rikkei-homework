import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Matkhau {
    public static void main(String[] args) {
        String regex =   "^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@#$!%])[A-Za-z0-9@#$!%]{8,}$";
        Pattern pattern = Pattern.compile(regex);
        System.out.println("Nhập vào mật khẩu");
        Scanner sc = new Scanner(System.in);
        String passWord = sc.nextLine();
        if (pattern.matcher(passWord).matches()) {
            System.out.println("Mật khẩu hợp lệ");
        }else{
            System.out.println("Mật khẩu không hợp lệ");
        }
    }
}
