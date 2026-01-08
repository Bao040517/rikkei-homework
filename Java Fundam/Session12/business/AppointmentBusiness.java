package Session12.business;

import Session12.entity.Appointment;

import java.util.*;
import java.util.stream.Collectors;

public class AppointmentBusiness {

    private static List<Appointment> appointmentList = new ArrayList<>();

    public void addAppointment(Appointment a) {
        if (a.getAppointmentId().length() != 6 || isIdExist(a.getAppointmentId())) {
            System.out.println("Mã lịch hẹn phải đúng 6 ký tự và không trùng");
            return;
        }

        if (a.getPatientName().length() < 10 || a.getPatientName().length() > 50) {
            System.out.println("Tên bệnh nhân phải từ 10–50 ký tự");
            return;
        }

        if (!a.getPhoneNumber().matches("^(03|05|07|08|09)\\d{8}$")) {
            System.out.println("Số điện thoại không hợp lệ");
            return;
        }

        if (a.getDoctor().length() > 200) {
            System.out.println("Tên bác sĩ không được quá 200 ký tự");
            return;
        }

        appointmentList.add(a);
        System.out.println("Thêm lịch hẹn thành công");
    }

    public void displayAppointments() {
        if (appointmentList.isEmpty()) {
            System.out.println("Danh sách lịch hẹn trống");
            return;
        }

        appointmentList.stream()
                .sorted(Comparator.comparing(Appointment::getAppointmentDate))
                .forEach(System.out::println);
    }

    public void searchByPatientName(String keyword) {
        List<Appointment> result = appointmentList.stream()
                .filter(a -> a.getPatientName().toLowerCase().contains(keyword.toLowerCase()))
                .collect(Collectors.toList());

        if (result.isEmpty()) {
            System.out.println("Không tìm thấy lịch hẹn");
        } else {
            result.forEach(System.out::println);
        }
    }

    public void updateAppointment(String id, Appointment newData) {
        Optional<Appointment> optional = appointmentList.stream()
                .filter(a -> a.getAppointmentId().equals(id))
                .findFirst();

        optional.ifPresentOrElse(
                old -> {
                    old.setPatientName(newData.getPatientName());
                    old.setPhoneNumber(newData.getPhoneNumber());
                    old.setAppointmentDate(newData.getAppointmentDate());
                    old.setDoctor(newData.getDoctor());
                    System.out.println("Cập nhật lịch hẹn thành công");
                },
                () -> System.out.println("Không tìm thấy lịch hẹn cần cập nhật")
        );
    }

    public void deleteAppointment(String id, Scanner scanner) {
        Optional<Appointment> optional = appointmentList.stream()
                .filter(a -> a.getAppointmentId().equals(id))
                .findFirst();

        optional.ifPresentOrElse(
                a -> {
                    System.out.print("Xác nhận xóa (Y/N): ");
                    String confirm = scanner.nextLine();
                    if (confirm.equalsIgnoreCase("Y")) {
                        appointmentList.remove(a);
                        System.out.println("Đã xóa lịch hẹn");
                    } else {
                        System.out.println("Hủy xóa");
                    }
                },
                () -> System.out.println("Không tìm thấy lịch hẹn cần xóa")
        );
    }

    public void statistic() {
        System.out.println("Tổng số lịch hẹn: " + appointmentList.size());

        Map<String, Long> statByDoctor = appointmentList.stream()
                .collect(Collectors.groupingBy(
                        Appointment::getDoctor,
                        Collectors.counting()
                ));

        statByDoctor.forEach(
                (doctor, count) ->
                        System.out.println("Bác sĩ " + doctor + ": " + count + " lịch hẹn")
        );
    }

    private boolean isIdExist(String id) {
        return appointmentList.stream()
                .anyMatch(a -> a.getAppointmentId().equals(id));
    }
}
