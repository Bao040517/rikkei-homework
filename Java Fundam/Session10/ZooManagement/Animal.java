package Session10.ZooManagement;

public class Animal {
    protected String name;
    protected Integer age;

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Animal() {
    }
    public Animal(String name, Integer age) {
        this.name = name;
        this.age = age;
    }
    public void showInfo()
    {
        System.out.println("Name: " + this.name);
        System.out.println("Age: " + this.age);
    }
    public void makeSound(){
    }
    public void eat(){}
    public void eat(String food){
        System.out.println("Eating " + food);
    }

}
