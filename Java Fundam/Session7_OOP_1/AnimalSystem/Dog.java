package Session7_OOP_1.AnimalSystem;

public class Dog extends Animal {
    private String color;
    public Dog() {
    }
    public Dog(String color) {
        this.color = color;
    }

    public Dog(String name, Integer age, String color) {
        super(name, age);
        this.color = color;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
    public void meow() {
        System.out.println("Dog mew");
    }
    public void makeSound() {
        System.out.println("Dog makes sound");
    }
}
