package Session11.thanhtoan;

public class CreditCardPayment extends Payment implements Refundable{
    @Override
    public void refund() {
        System.out.println("Refund CreditCardPayment");
    }

    @Override
    public void pay() {
        System.out.println("CreditCardPayment");
    }

    public CreditCardPayment() {
    }

    public CreditCardPayment(double amount) {
        super(amount);
    }
}
