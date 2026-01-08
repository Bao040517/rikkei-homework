package Session11.qltb;

public class Television extends Device implements Chargeable {
//    @Override
//    public void charge() {
//
//    }

    @Override
    void turnOn() {
        System.out.println("Television turning on");
    }

    @Override
    void turnOff() {
        System.out.println("Television turning off");
    }
}
