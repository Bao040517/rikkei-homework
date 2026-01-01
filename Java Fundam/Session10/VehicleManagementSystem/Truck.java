package Session10.VehicleManagementSystem;

public class Truck extends MotorVehicle{
    @Override
    public void  startEngine(){
        System.out.println("Truck start");
    }

    public Truck() {
    }

    public Truck(String brand, Integer year, String fuelType) {
        super(brand, year, fuelType);
    }

    public Truck(String fuelType) {
        super(fuelType);
    }
    public void loadCargo(){
        System.out.println("Loading Cargo");
    }
    public void move(){
        System.out.println("Truck is moving");
    }
    public void move(Integer speed){
        System.out.printf("Truck is moving at %d km/h",speed);
    }
}
