package Session11.qltb;

public interface Connectable {
    default void connectWifi(){
        System.out.println("Wifi enable");
    };
}
