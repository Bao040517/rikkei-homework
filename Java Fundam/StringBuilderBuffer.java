public class StringBuilderBuffer {
    public static void main(String[] args) {
        int loop = 10_000;
        long start = System.currentTimeMillis();
        String s = "Hello";
        for (int i = 0; i < loop; i++) {
            s = s + " World";
        }
        long end = System.currentTimeMillis();
        System.out.println("String time: " + (end - start) + " ms");
        start = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder("Hello");
        for (int i = 0; i < loop; i++) {
            sb.append(" World");
        }
        end = System.currentTimeMillis();
        System.out.println("StringBuilder time: " + (end - start) + " ms");
        start = System.currentTimeMillis();
        StringBuffer sbf = new StringBuffer("Hello");
        for (int i = 0; i < loop; i++) {
            sbf.append(" World");
        }
        end = System.currentTimeMillis();
        System.out.println("StringBuffer time: " + (end - start) + " ms");
    }
}
