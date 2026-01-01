package Session10.ZooManagement;

public class Elephant extends Mammal{
    @Override
    public void makeSound(){
        System.out.println("Elephant say");
    }
    public void  sprayWater() {
        System.out.println("Elephant spray water");
    }
    public void eat(){
        System.out.println("Elephant eating food");
    }
    public void eat(String food) {
        System.out.println("Elephant eating " + food);
    }
}
