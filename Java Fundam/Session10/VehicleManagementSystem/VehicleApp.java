package Session10.VehicleManagementSystem;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class VehicleApp {
    public static void main(String[] args) {
    Integer choice;
    Integer choice2;
    Scanner sc = new Scanner(System.in);
    List<Vehicle> vehicleList = new ArrayList<>();
//    Car car = new Car();
//    car.setFuelType("Gasoline");
//    car.setBrand("Ford");
//    car.setYear(2020);
//    Truck truck = new Truck();
//    truck.setFuelType("Diesel");
//    truck.setBrand("Toyota");
//    truck.setYear(2019);
//    Motorcycle motorcycle = new Motorcycle();
//    motorcycle.setFuelType("Gasoline");
//    motorcycle.setBrand("Volvo");
//    motorcycle.setYear(2021);

    do{
        System.out.println("=================================================");
        System.out.println("============ VEHICLE MANAGEMENT MENU ============");
        System.out.println("1. Hiển thị thông tin tất cả phương tiện");
        System.out.println("2. Kiểm tra Overriding: startEngine()");
        System.out.println("3. Kiểm tra Overloading: move()");
        System.out.println("4. Kiểm tra đa hình runtime (mảng Vehicle[])");
        System.out.println("5. Gọi các hành vi đặc trưng theo loại");
        System.out.println("6. Thêm phương tiện mới (Car/Motorcycle/Truck)");
        System.out.println("0. Thoát");
        System.out.println("=================================================");
        System.out.print("Lựa chọn của bạn: ");
        choice = Integer.parseInt(sc.nextLine());
        switch (choice) {
            case 1:
            {
                Car car = new Car();
                car.showInfo();
                System.out.println("\n");
                Truck truck = new Truck();
                truck.showInfo();
                System.out.println("\n");
                Motorcycle motorcycle = new Motorcycle();
                motorcycle.showInfo();
                System.out.println("\n");
                break;
            }
            case 2:
            {   Car car = new Car();
                car.startEngine();
                System.out.println("\n");
                Truck truck = new Truck();
                truck.startEngine();
                System.out.println("\n");
                Motorcycle motorcycle = new Motorcycle();
                motorcycle.startEngine();
                System.out.println("");
                break;
            }
            case 3:
            {   Car car = new Car();
                car.move();
                car.move(20);
                System.out.println("\n");
                Truck truck = new Truck();
                truck.move();
                truck.move(30);
                System.out.println("\n");
                Motorcycle motorcycle = new Motorcycle();
                motorcycle.move();
                motorcycle.move(40);
                System.out.println("\n");
                break;
            }
            case 4:
            {
                System.out.println("KIỂM TRA ĐA HÌNH RUNTIME (List<Vehicle>)");

                if (vehicleList.isEmpty()) {
                    System.out.println("Danh sách phương tiện đang trống!");
                    break;
                }

                for (Vehicle v : vehicleList) {
                    v.startEngine();
                }

                System.out.println();
                break;
            }
            case 5:
            {
                Car car = new Car();
                car.openTrunk();
                System.out.println("\n");
                Motorcycle motorcycle = new Motorcycle();
                motorcycle.doWheels();
                System.out.println("\n");
                Truck truck = new Truck();
                truck.loadCargo();
                System.out.println("\n");
                break;

            }
            case 6:
                do{
                    System.out.println("Thêm phương tiện");
                    System.out.println("1. Thêm car");
                    System.out.println("2. Thêm Motorcycle");
                    System.out.println("3. Thêm Truck");
                    System.out.println("4. Thoát");
                    choice2 = Integer.parseInt(sc.nextLine());
                    switch (choice2) {
                        case 1:
                        {
                            Car carAdd = new Car();
                            System.out.println("Nhập brand ");
                            carAdd.setBrand(sc.nextLine());
                            System.out.println("Nhập Fuel Type ");
                            carAdd.setFuelType(sc.nextLine());
                            System.out.println("Nhập năm: ");
                            carAdd.setYear(sc.nextInt());
                            vehicleList.add(carAdd);
                            break;
                        }
                        case 2:
                        {
                            Motorcycle motorcycleAdd = new Motorcycle();
                            System.out.println("Nhập brand ");
                            motorcycleAdd.setBrand(sc.nextLine());
                            System.out.println("Nhập Fuel Type ");
                            motorcycleAdd.setFuelType(sc.nextLine());
                            System.out.println("Nhập năm: ");
                            motorcycleAdd.setYear(sc.nextInt());
                            vehicleList.add(motorcycleAdd);
                            break;
                        }
                        case 3:
                        {
                            Truck truckAdd = new Truck();
                            System.out.println("Nhập brand ");
                            truckAdd.setBrand(sc.nextLine());
                            System.out.println("Nhập Fuel Type ");
                            truckAdd.setFuelType(sc.nextLine());
                            System.out.println("Nhập năm: ");
                            truckAdd.setYear(sc.nextInt());
                            vehicleList.add(truckAdd);
                            break;
                        }
                    }
                }while(choice2 != 4);

        }
    }while (choice != 0);
    }
}
