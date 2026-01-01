package Session10.ZooManagement;

public class Dog extends Mammal {
    @Override
    public void makeSound() {
        System.out.println("Dog barks");
    }
    public void fetchBall(){
        System.out.println("Fetching Ball");
    }

    public Dog(String name, Integer age, Boolean hasFur) {
        super(name, age, hasFur);
    }

    public Dog() {
    }

    public Dog(Boolean hasFur) {
        super(hasFur);
    }
    public void eat(){
        System.out.println("Dog eating food");
    }
    public void eat(String food) {
        System.out.println("Dog eating " + food);
    }
}
