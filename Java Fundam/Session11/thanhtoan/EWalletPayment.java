package Session11.thanhtoan;

public class EWalletPayment extends Payment implements Refundable {
    @Override
    public void refund() {
        System.out.println("Refund EWalletPayment");
    }

    @Override
    public void pay() {
        System.out.println("EWalletPayment");
    }

    public EWalletPayment() {
    }

    public EWalletPayment(double amount) {
        super(amount);
    }

}
