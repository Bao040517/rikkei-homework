package Session7_OOP_1.AnimalSystem;

public class Animal {
    private String name;
    private Integer age;

    public Animal() {
    }
    public Animal(String name, Integer age) {
        this.name = name;
        this.age = age;
    }

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
    public void makeSound() {
        System.out.println("Animal is making sound");
    }
}
