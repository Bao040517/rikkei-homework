package Session10.ZooManagement;

public class Cat extends Mammal{
    @Override
    public void makeSound(){
        System.out.println("Say meow");
    }
    public void climbTree(){
        System.out.println("Cat Climbing");
    }
    public void eat(){
        System.out.println("Cat eating food");
    }
    public void eat(String food) {
        System.out.println("Cat eating " + food);
    }
}
