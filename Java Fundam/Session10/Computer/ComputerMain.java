package Session10.Computer;

public class ComputerMain {
    public static void main(String[] args) {
        Computer computer = new Computer();
        double price1 = computer.calculatePrice(1000.0);
        System.out.println("Giá cuối: " + price1);
        System.out.println();

        double price2 = computer.calculatePrice(1000, 0.1);
        System.out.println("Giá cuối: " + price2);
        System.out.println();

        double price3 = computer.calculatePrice(1000, 0.1, 0.05);
        System.out.println("Giá cuối: " + price3);
    }
}
