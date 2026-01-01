package Session10.Brand;

public class MainCar {
    public static void main(String[] args) {
        Car car = new Car();

        car.accelerate();
        car.printStatus();
        System.out.println();

        car.accelerate(20);
        car.printStatus();
        System.out.println();

        car.accelerate(5, 4);
        car.printStatus();
    }
}
