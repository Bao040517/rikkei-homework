package Session11.thanhtoan;

import javax.smartcardio.Card;
import java.util.ArrayList;
import java.util.List;

public class mainthanhtoan {
    public static void main(String[] args) {
        List<Payment> payments = new ArrayList<>();
        CashPayment cashPayment = new CashPayment();
        cashPayment.setAmount(500);
        CreditCardPayment creditCardPayment = new CreditCardPayment();
        creditCardPayment.setAmount(600);
        EWalletPayment eWalletPayment = new EWalletPayment();
        eWalletPayment.setAmount(650);
        payments.add(cashPayment);
        payments.add(creditCardPayment);
        payments.add(eWalletPayment);
        for (Payment payment : payments) {
            payment.pay();
            payment.printtAmount();
            if (payment instanceof Refundable) {
                ((Refundable) payment).refund();
            }
        }
    }
}
