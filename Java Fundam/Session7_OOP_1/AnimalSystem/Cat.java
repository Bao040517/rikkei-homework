package Session7_OOP_1.AnimalSystem;

public class Cat extends Animal{
    private String breed;

    public Cat() {
    }
    public Cat(String breed) {
        this.breed = breed;
    }

    public Cat(String name, Integer age, String breed) {
        super(name, age);
        this.breed = breed;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }
    public void bark() {
        System.out.println("Cat barks");
    }
    @Override
    public void makeSound() {
        System.out.println("Cat makes sound");
    }
}
