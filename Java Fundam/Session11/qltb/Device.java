package Session11.qltb;

abstract class Device {
    protected Integer id;
    protected String name;

    public Device(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public Device() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    abstract void turnOn();
    abstract void turnOff();
}
