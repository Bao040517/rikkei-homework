package Session11.quanlynhanvien;

public class FullTimeEmployee extends Employee implements BonusEligible{
    @Override
    public double calculate() {
        return 6000.00;
    }

    @Override
    public double calculateBonus() {
        return 100000.00;
    }
}
