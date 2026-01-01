package Session10.VehicleManagementSystem;

public class Car extends MotorVehicle{
    @Override
    public void startEngine(){
        System.out.println("Car starts engining...");
    }
    public void openTrunk(){
        System.out.println("Car opens trunk");
    }

    public Car() {
    }

    public Car(String brand, Integer year, String fuelType) {
        super(brand, year, fuelType);
    }

    public Car(String fuelType) {
        super(fuelType);
    }

    public void move(){
        System.out.println("Car is moving");
    }
    public void move(Integer speed){
        System.out.printf("Car is moving at %d km/h",speed);
    }
}
