package Session11.qltb;

import java.util.ArrayList;
import java.util.List;

public class mainqltb {
    public static void main(String[] args) {
        List<Device>  devices = new ArrayList<Device>();
        Laptop laptop=new Laptop();
        laptop.setId(1);
        laptop.setName("Laptop 1");
        SmartPhone smartPhone=new SmartPhone();
        smartPhone.setId(2);
        smartPhone.setName("SmartPhone 2");

        Television television=new Television();
        television.setId(3);
        television.setName("Television 3");
        devices.add(laptop);
        devices.add(smartPhone);
        devices.add(television);
        for (Device device : devices) {
            System.out.println("Device "+device.getId()+" "+device.getName());
            device.turnOn();
            if(device instanceof Chargeable){
                ((Chargeable)device).charge();
            }
            if(device instanceof Connectable){
                ((Connectable) device).connectWifi();
            }
            device.turnOff();
            System.out.println("\n");
        }

    }
}
