package Session8.QLSV_LD;

public class Student82 {
    int id;
    String name;
    int age;
    public Student82(int id, String name, int age) {
        this.id = id;
        this.name = name;
        this.age = age;
    }
    public static void main(String[] args) {
        Student82 s1 = new Student82(1, "Nguyen Van A", 20);
        System.out.println("ID: " + s1.id + ", Name: " + s1.name +", Age: " + s1.age);
    }
}

