package Session11.hinhhoc;

abstract class Shape {
    protected String name;
    abstract double getArea();
    abstract double getPerimeter();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void displayInfo() {
        System.out.println("Tên hình: " + name);
    }
}
