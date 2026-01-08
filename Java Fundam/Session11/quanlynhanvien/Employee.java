package Session11.quanlynhanvien;

abstract class Employee {
    protected Integer id;
    protected String name;

    public Employee(Integer id, String name) {
        this.id = id;
        this.name = name;
    }
    public Employee() {}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    abstract public double calculate();
    public void showInfo() {
        System.out.println("Employee ID: " + id);
        System.out.println("Employee Name: " + name);
    }
}
