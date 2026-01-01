package Session9.StudentManagement;

import java.util.ArrayList;
import java.util.List;

public class MainStudent {
    public static void main(String[] args) {
        List<Student> students = new ArrayList<Student>();
        Student student1 = new Student();
        Student student2 = new Student();
        Student student3 = new Student();
        student1.setId(1);
        student2.setId(2);
        student3.setId(3);
        student1.setFullName("John Doe");
        student2.setFullName("Jane Doe");
        student3.setFullName("Jane Johnson");
        student1.setAge(19);
        student2.setAge(19);
        student3.setAge(19);
        student1.setGpa(6.0);
        student2.setGpa(9.0);
        student3.setGpa(8.0);
        students.add(student1);
        students.add(student2);
        students.add(student3);
        Student student4 = new Student(4,"Hoten",9.0,4);
        for (Student student : students) {
            student.printInfor();
            System.out.println(" ");
        }
        System.out.println("Số lượng: " + Student.getCount());
    }
}
