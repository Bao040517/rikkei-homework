package Session10.Shape;

public class Rectangle extends Shape {
    private Double width;
    private Double height;
    public Rectangle(Double width, Double height) {
        this.width = width;
        this.height = height;
    }
    public Rectangle(){}

    public Double getHeight() {
        return height;
    }

    public void setHeight(Double height) {
        this.height = height;
    }

    public Double getWidth() {
        return width;
    }

    public void setWidth(Double width) {
        this.width = width;
    }
    @Override
    public Double area(){
        return this.width * this.height;
    }
}
