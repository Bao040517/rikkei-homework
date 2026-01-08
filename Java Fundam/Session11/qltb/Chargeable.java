package Session11.qltb;

public interface Chargeable {
    default void charge(){
        System.out.println("Charge enable");
    };
}
