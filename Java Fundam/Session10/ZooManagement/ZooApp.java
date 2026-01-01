package Session10.ZooManagement;

import java.util.Scanner;

public class ZooApp {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Integer choice;
        Integer choice2;
        do {
            System.out.println("==============================================");
            System.out.println("=========== ZOO MANAGEMENT MENU ===============");
            System.out.println("==============================================");
            System.out.println("1. Tạo đối tượng và hiển thị thông tin (Kế thừa + super)");
            System.out.println("2. Kiểm tra Overriding: gọi makeSound() của từng con vật");
            System.out.println("3. Kiểm tra Overloading: gọi eat() và eat(String)");
            System.out.println("4. Kiểm tra đa hình runtime (Animal array)");
            System.out.println("5. Gọi phương thức đặc trưng của từng loài");
            System.out.println("0. Thoát chương trình");
            System.out.println("==============================================");
            System.out.print("Lựa chọn của bạn: ");
            choice = Integer.parseInt(sc.nextLine());
            switch (choice) {
                case 1:
                    do {
                        System.out.println("1. Tạo đối tượng Dog");
                        System.out.println("2. Tạo đối tượng Dog");
                        System.out.println("3. Tạo đối tượng Dog");
                        System.out.println("4. Thoát");
                        choice2 = Integer.parseInt(sc.nextLine());
                        switch (choice2) {
                            case 1: {
                                Dog dog = new Dog();
                                System.out.print("Nhập tên: ");
                                dog.setName(sc.nextLine());
                                System.out.print("Nhập tuổi: ");
                                dog.setAge(Integer.parseInt(sc.nextLine()));
                                System.out.print("Có lông (true/false): ");
                                dog.setHasFur(Boolean.parseBoolean(sc.nextLine()));
                                break;
                            }
                            case 2: {
                                Cat cat = new Cat();
                                System.out.print("Nhập tên: ");
                                cat.setName(sc.nextLine());
                                System.out.print("Nhập tuổi: ");
                                cat.setAge(Integer.parseInt(sc.nextLine()));
                                System.out.print("Có lông (true/false): ");
                                cat.setHasFur(Boolean.parseBoolean(sc.nextLine()));
                                break;
                            }
                            case 3: {
                                Elephant elephant = new Elephant();
                                System.out.print("Nhập tên: ");
                                elephant.setName(sc.nextLine());
                                System.out.print("Nhập tuổi: ");
                                elephant.setAge(Integer.parseInt(sc.nextLine()));
                                System.out.print("Có lông (true/false): ");
                                elephant.setHasFur(Boolean.parseBoolean(sc.nextLine()));
                                break;
                            }
                            case 4: {
                                System.out.println("Lựa chọn không phù hợp");
                                break;
                            }
                        }
                    }while (choice2 != 4) ;
                    break;

                case 2:
                {
                    Dog dog = new Dog();
                    dog.makeSound();
                    Cat cat = new Cat();
                    cat.makeSound();
                    Elephant elephant = new Elephant();
                    elephant.makeSound();
                    break;
                }
                case 3: {
                    Dog dog = new Dog();
                    dog.eat();
                    dog.eat("DogFood");
                    Cat cat = new Cat();
                    cat.eat();
                    cat.eat("CatFood");
                    Elephant elephant = new Elephant();
                    elephant.eat();
                    elephant.eat("ElephantFood");
                    break;
                }
                case 4:
                {
                    Dog dog = new Dog();
                    dog.makeSound();
                    Cat cat = new Cat();
                    cat.makeSound();
                    Elephant elephant = new Elephant();
                    elephant.makeSound();
                    break;
                }
                case  5: {
                    Dog dog = new Dog();
                    dog.fetchBall();
                    Cat cat = new Cat();
                    cat.climbTree();
                    Elephant elephant = new Elephant();
                    elephant.sprayWater();
                    break;
                }


            }
        }while (choice != 0);
    }
}
