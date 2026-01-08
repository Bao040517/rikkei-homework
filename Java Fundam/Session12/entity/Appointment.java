package Session12.entity;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;

public class Appointment {
    private String appointmentId;
    private String patientName;
    private String phoneNumber;
    private LocalDate appointmentDate;
    private String doctor;

    public Appointment() {
    }

    public Appointment(String appointmentId, String patientName,
                       String phoneNumber, LocalDate appointmentDate, String doctor) {
        this.appointmentId = appointmentId;
        this.patientName = patientName;
        this.phoneNumber = phoneNumber;
        this.appointmentDate = appointmentDate;
        this.doctor = doctor;
    }

    public String getAppointmentId() {
        return appointmentId;
    }

    public void setAppointmentId(String appointmentId) {
        this.appointmentId = appointmentId;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public LocalDate getAppointmentDate() {
        return appointmentDate;
    }

    public void setAppointmentDate(LocalDate appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }

    // Nhập dữ liệu
    public void inputData(Scanner scanner) {
        System.out.print("Nhập mã lịch hẹn (6 ký tự): ");
        this.appointmentId = scanner.nextLine();

        System.out.print("Nhập tên bệnh nhân: ");
        this.patientName = scanner.nextLine();

        System.out.print("Nhập số điện thoại: ");
        this.phoneNumber = scanner.nextLine();

        System.out.print("Nhập ngày hẹn (dd/MM/yyyy): ");
        this.appointmentDate = LocalDate.parse(
                scanner.nextLine(),
                DateTimeFormatter.ofPattern("dd/MM/yyyy")
        );

        System.out.print("Nhập tên bác sĩ: ");
        this.doctor = scanner.nextLine();
    }

    @Override
    public String toString() {
        return "Mã lịch hẹn: " + appointmentId +
                " | Bệnh nhân: " + patientName +
                " | SĐT: " + phoneNumber +
                " | Ngày hẹn: " + appointmentDate.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")) +
                " | Bác sĩ: " + doctor;
    }
}
