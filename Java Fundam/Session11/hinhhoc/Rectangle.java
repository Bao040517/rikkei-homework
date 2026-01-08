package Session11.hinhhoc;

public class Rectangle extends Shape implements Drawable {
    private double width;
    private double height;

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }
    public Rectangle(double width, double height) {
        this.width = width;
        this.height = height;
    }
    public Rectangle() {}

    @Override
    public void draw() {
        System.out.println("Đã vẽ hình chữ nhật");
    }

    @Override
    double getArea() {
        return width * height;
    }

    @Override
    double getPerimeter() {
        return (width + height) * 2;
    }

}
