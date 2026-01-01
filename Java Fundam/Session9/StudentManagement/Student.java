package Session9.StudentManagement;

public class Student {
    private Integer id;
    private String fullName;
    private Integer age;
    private Double gpa;
    public static int count = 0;
    final double MIN_GPA = 0.00;
    final double MAX_GPA = 10.00;

    public Student() {
        count++;
    }

    public Student(Integer age, String fullName, Double gpa, Integer id) {
        this();
        this.age = age;
        this.fullName = fullName;
        this.gpa = gpa;
        this.id = id;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int count) {
        Student.count = count;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Double getGpa() {
        return gpa;
    }

    public void setGpa(Double gpa) {
        this.gpa = gpa;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public double getMAX_GPA() {
        return MAX_GPA;
    }

    public double getMIN_GPA() {
        return MIN_GPA;
    }

    public void printInfor() {
        System.out.println("ID: " + this.id);
        System.out.println("Age: " + this.age);
        System.out.println("Full Name: " + this.fullName);
        System.out.println("GPA: " + this.gpa);
    }
}
