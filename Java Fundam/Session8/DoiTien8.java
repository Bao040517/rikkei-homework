package Session8;

import java.text.DecimalFormat;

public class DoiTien8 {
    private static double rate = 0;
    public static void setRate(double r) {
        if (r <= 0) {
            throw new IllegalArgumentException("Tỉ giá phải > 0");
        }
        rate = r;
    }
    public static double getRate() {
        return rate;
    }
    public static double toUSD(int vnd) {
        if (vnd < 0) {
            throw new IllegalArgumentException("Số tiền VND không hợp lệ");
        }
        if (rate <= 0) {
            throw new IllegalStateException("Chưa thiết lập tỉ giá");
        }
        return vnd / rate;
    }
    public static String formatUSD(double usd) {
        DecimalFormat df = new DecimalFormat("#,##0.00");
        return df.format(usd);
    }

    public static void main(String[] args) {
        DoiTien8.setRate(23500);

        int vnd = 1_000_000;
        double usd = DoiTien8.toUSD(vnd);

        System.out.println("VND: " + vnd);
        System.out.println("USD: " + DoiTien8.formatUSD(usd));
    }
}

