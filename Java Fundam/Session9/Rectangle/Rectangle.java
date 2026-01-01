package Session9.Rectangle;

import java.util.Scanner;

public class Rectangle {
    private Long width;
    private Long height;
    public Rectangle(Long width, Long height) {
        this.width = width;
        this.height = height;
    }
    public Rectangle() {}

    public Long getHeight() {
        return height;
    }

    public void setHeight(Long height) {
        this.height = height;
    }

    public Long getWidth() {
        return width;
    }

    public void setWidth(Long width) {
        this.width = width;
    }
    public Double getArea(){
        return (double) (this.width + this.height) * 2;
    }
    public Double getPerimeter(){
        return (double) this.width * this.height;
    }

    public void printInfo(){
        System.out.println("Chu vi của hình chữ nhật: " + this.getArea());
        System.out.println("Diện tích của hình chữ nhật:  " + this.getPerimeter());
    }
}
