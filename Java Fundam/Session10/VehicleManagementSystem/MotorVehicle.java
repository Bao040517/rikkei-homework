package Session10.VehicleManagementSystem;

public class MotorVehicle extends Vehicle {
    protected String fuelType;
    public MotorVehicle() {}

    public MotorVehicle(String fuelType) {
        this.fuelType = fuelType;
    }
    public MotorVehicle(String brand, Integer year, String fuelType) {
        super(brand, year);
        this.fuelType = fuelType;
    }

    @Override
    public void showInfo(){
        super.showInfo();
        System.out.println("Fuel Type: " + fuelType);
    }

    public String getFuelType() {
        return fuelType;
    }

    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }
}
