package Session11.quanlynhanvien;

public class PartTimeEmployee extends Employee  {

    private Double workingHour;
    public PartTimeEmployee(Double workingHour) {
        this.workingHour = workingHour;
    }
    public PartTimeEmployee() {}

    public Double getWorkingHour() {
        return workingHour;
    }

    public void setWorkingHour(Double workingHour) {
        this.workingHour = workingHour;
    }
    @Override
    public double calculate() {
        return 2000 * workingHour;
    }
}
