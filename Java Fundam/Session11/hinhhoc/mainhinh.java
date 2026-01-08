package Session11.hinhhoc;

import java.util.ArrayList;
import java.util.List;

public class mainhinh {
    public static void main(String[] args) {
        List<Shape> shapes = new ArrayList<>();
        Circle circle = new Circle();
        circle.setName("Circle");
        circle.setRadius(5);
        Rectangle rectangle = new Rectangle();
        rectangle.setName("Rectangle");
        rectangle.setHeight(5);
        rectangle.setWidth(5);
        shapes.add(circle);
        shapes.add(rectangle);
        for (Shape shape : shapes) {
            shape.displayInfo();
            System.out.println("Diện tích: " + shape.getArea());
            System.out.println("Chu vi: " + shape.getPerimeter());
            ((Drawable) shape).draw();
        }


    }
}
