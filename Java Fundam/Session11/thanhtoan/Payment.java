package Session11.thanhtoan;

abstract class Payment {
    protected double amount;

    public Payment(double amount) {
        this.amount = amount;
    }
    public Payment() {}
    public double getAmount() {
        return amount;
    }
    public void setAmount(double amount) {
        this.amount = amount;
    }
    abstract public void pay();
    public void printtAmount(){
            System.out.println("Amount: " + amount);
    }



}
