import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Palindrome {
    static void dem(StringBuffer s) {
        int thuong = 0;
        int hoa = 0;
        int so = 0;
        int dacbiet = 0;

        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);

            if (c >= 'a' && c <= 'z') {
                thuong++;
            } else if (c >= 'A' && c <= 'Z') {
                hoa++;
            } else if (c >= '0' && c <= '9') {
                so++;
            } else {
                dacbiet++;
            }
        }

        System.out.println("Chữ thường: " + thuong);
        System.out.println("Chữ hoa: " + hoa);
        System.out.println("Chữ số: " + so);
        System.out.println("Ký tự đặc biệt: " + dacbiet);
    }
    static void chuanhoa(StringBuffer s) {
        String[] str = s.toString().trim().split("\\s+");
        for (int i = 0; i < str.length; i++) {
            str[i] = Character.toUpperCase(str[i].charAt(0)) + str[i].substring(1).toLowerCase();
        }
        s.setLength(0);
        for (int i = 0; i < str.length; i++) {
            s.append(str[i]);
            if (i < str.length - 1) {
                s.append(" ");
            }
        }
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Integer choice;
        StringBuffer sb = new StringBuffer();
        do{
            System.out.println("*** MENU ***");
            System.out.println("1. Nhập chuỗi");
            System.out.println("2. Đếm số ký tự thường, hoa, số, đặc biệt");
            System.out.println("3. Đảo ngược chuỗi");
            System.out.println("4. Kiểm tra Palindrome");
            System.out.println("5. Chuẩn hoá chuỗi (Xoá khoảng trắng dư thừa, viết hoa chữ cái đầu)");
            System.out.println("6. Thoát");
            System.out.println("*************************");
            System.out.println("Lựa chọn của bạn");
            switch (choice = Integer.parseInt(sc.nextLine())){
                case 1:
                    System.out.println("Chọn: " + choice);
                    System.out.println("Mời nhập chỗi");
                    sb.append(sc.nextLine());
                    break;
                case 2:
                    System.out.println("Chọn: " + choice);
                    dem(sb);
                    break;
                case 3:
                    System.out.println("Chọn: " + choice);
                    System.out.println("Chuỗi đảo ngược: \n" + sb.reverse().toString());
                    break;
                case 4:
                    System.out.println("Chọn: " + choice);
                    StringBuffer sbc = new StringBuffer();
                    sbc.append(sb.reverse().toString());
                    if(sbc.toString().equals(sb.toString())){
                        System.out.println("Đây là chuỗi Palindrome");
                    }else {
                        System.out.println("Không phải chuỗi palindrome");
                    }
                    break;
                case 5:
                    System.out.println("Chọn: " + choice);
                    chuanhoa(sb);
                    System.out.println(sb.toString());
                    break;
            }
        }
        while(choice == 6);
    }
}
