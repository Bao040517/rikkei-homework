package Session10.ZooManagement;

public class Mammal extends Animal{
    protected Boolean hasFur;
    public Mammal() {}
    public Mammal(Boolean hasFur) {}

    public Mammal(String name, Integer age, Boolean hasFur) {
        super(name, age);
        this.hasFur = hasFur;
    }
    @Override
    public void showInfo(){
        super.showInfo();
        System.out.println("Has Fur? "+this.hasFur);
    }

    public Boolean getHasFur() {
        return hasFur;
    }

    public void setHasFur(Boolean hasFur) {
        this.hasFur = hasFur;
    }
}

