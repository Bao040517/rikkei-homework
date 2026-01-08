package Session11.qltb;

public class SmartPhone extends Device implements Connectable,Chargeable {
    @Override
    void turnOn() {
        System.out.println("SmartPhone turning on");
    }

    @Override
    void turnOff() {
        System.out.println("SmartPhone turning off");
    }

//    @Override
//    public void charge() {
//
//    }
//
//    @Override
//    public void connectWifi() {
//
//    }
}
