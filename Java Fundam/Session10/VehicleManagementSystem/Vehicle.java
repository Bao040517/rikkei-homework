package Session10.VehicleManagementSystem;

public class Vehicle {
    protected String brand;
    protected Integer year;

    public Vehicle(String brand, Integer year) {
        this.brand = brand;
        this.year = year;
    }

    public Vehicle() {
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }
    public void showInfo(){
        System.out.println("Brand: " + this.getBrand());
        System.out.println("Year: " + this.getYear());
    }
    public void startEngine(){
        System.out.println("Starting engine ...");
    }
    public void move(){
        System.out.println("Moving ...");
    }
    public void move(Integer speed){
        System.out.printf("Vehicle is moving at %d km/h",speed);
    }
}
