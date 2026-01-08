package Session11.hinhhoc;

public class Circle extends Shape implements Drawable {
    private double radius;

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public Circle(double radius) {
        this.radius = radius;
    }
    public Circle() {}


    @Override
    public void draw() {
        System.out.println("Đã vẽ là circle");

    }

    @Override
    double getArea() {
        return 3.14 * radius * radius;
    }

    @Override
    double getPerimeter() {
        return 2 * 3.14 * radius ;
    }
}
