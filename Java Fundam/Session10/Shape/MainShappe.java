package Session10.Shape;

public class MainShappe {
    public static void main(String[] args) {
        Shape s1 = new Rectangle(2.0,3.0);
        Shape s2 = new Circle(3.0);
        System.out.println(s1.area());
        System.out.printf("%.2f", s2.area());
    }
}
