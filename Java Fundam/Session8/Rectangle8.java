package Session8;

public class Rectangle8 {
    private double width;
    private double height;
    public Rectangle8(double width, double height) {
        this.width = width;
        this.height = height;
    }
    public double getWidth() {
        return width;
    }
    public double getHeight() {
        return height;
    }
    public double getArea() {
        return width * height;
    }
    public double getPerimeter() {
        return 2 * (width + height);
    }
    @Override
    public String toString() {
        return "width=" + width +
                ", height=" + height +
                ", area=" + getArea() +
                ", perimeter=" + getPerimeter();
    }
    public static void main(String[] args) {
        Rectangle8 r1 = new Rectangle8(3, 4);
        Rectangle8 r2 = new Rectangle8(5, 2);
        Rectangle8 r3 = new Rectangle8(4.5, 3.5);
        Rectangle8[] rectangles = { r1, r2, r3 };
        for (int i = 0; i < rectangles.length; i++) {
            System.out.println("Rectangle " + (i + 1) + ": " + rectangles[i]);
        }
        double maxArea = rectangles[0].getArea();
        for (Rectangle8 r : rectangles) {
            if (r.getArea() > maxArea) {
                maxArea = r.getArea();
            }
        }
        int count = 0;
        int index = -1;
        for (int i = 0; i < rectangles.length; i++) {
            if (rectangles[i].getArea() == maxArea) {
                count++;
                index = i;
            }
        }
        if (count == 1) {
            Rectangle8 r = rectangles[index];
            System.out.println("\nLargest area = " + maxArea +
                    " (Rectangle " + (index + 1) +
                    ": width=" + r.getWidth() +
                    ", height=" + r.getHeight() + ")");
        } else {
            System.out.println("\nCó " + count +
                    " hình chữ nhật có diện tích lớn nhất = " + maxArea);
        }
    }
}

