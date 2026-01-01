package Session10.Computer;

public class Computer {
    private Double basePrice;
    private Double tax;
    private Double discount;

    public Computer() {
    }
    public Computer(Double basePrice, Double tax, Double discount) {
        this.basePrice = basePrice;
        this.tax = tax;
        this.discount = discount;
    }
    public Double calculatePrice(Double basePrice){
        System.out.println("Công thức: Giá gốc");
        return basePrice;
    }
    public Double calculatePrice(double basePrice, double tax){
        System.out.println("Công thức: Giá gốc + Thuế");
        return basePrice + basePrice * tax;
    }
    public Double calculatePrice(double basePrice, double tax, Double discount){
        System.out.println("Công thức: Giá gốc + Thuế - Giảm giá");
        return basePrice + basePrice * tax - basePrice * discount;
    }

}
