package Session10.VehicleManagementSystem;

public class Motorcycle extends MotorVehicle{
    @Override
    public void startEngine()
    {
        System.out.println("Motorcycle started");
    }

    public Motorcycle() {
    }

    public Motorcycle(String brand, Integer year, String fuelType) {
        super(brand, year, fuelType);
    }

    public Motorcycle(String fuelType) {
        super(fuelType);
    }
    public void doWheels(){
        System.out.println("Motorcycle doWheels");
    }
    public void move(){
        System.out.println("Motorcycle is moving");
    }
    public void move(Integer speed){
        System.out.printf("Motorcycle is moving at %d km/h",speed);
    }
}
