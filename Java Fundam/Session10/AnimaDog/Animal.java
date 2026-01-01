package Session10.AnimaDog;

public class Animal {
    protected  String name;

    public Animal() {
    }
    public Animal(String name) {
        this.name = name;
    }
    public String getName() {
        return this.name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void makeSound(){
        System.out.println("Some animal sound");
    }

}
