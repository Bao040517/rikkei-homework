package Session11.qltb;

public class Laptop extends Device implements Connectable,Chargeable{
//    @Override
//    public void charge() {
//
//    }
//
//    @Override
//    public void connectWifi() {
//
//    }

    @Override
    void turnOn() {
        System.out.println("Laptop turning on");
    }

    @Override
    void turnOff() {
        System.out.println("Laptop turning off");
    }
}
