package Session11.thanhtoan;

public class CashPayment extends Payment{

    @Override
    public void pay() {
        System.out.println("CashPayment");
    }

    public CashPayment() {
    }

    public CashPayment(double amount) {
        super(amount);
    }

}
