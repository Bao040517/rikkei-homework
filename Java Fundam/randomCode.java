import java.util.Random;
import java.util.Scanner;
import java.util.regex.Pattern;

public class randomCode {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Nhập vào n: ");
        int n = sc.nextInt();
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "abcdefghijklmnopqrstuvwxyz" + "0123456789";
        Random rnd = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < n; i++) {
            sb.append(characters.charAt(rnd.nextInt(characters.length())));
        }
        System.out.println(sb);
    }
}
