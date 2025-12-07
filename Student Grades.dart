class Student  {
  int id;
  String name;
  int age;

  Student(this.id, this.name, this.age);
}
 mixin Printable on Student
 {
  void printStudentDetails(){
     print("ID: ${this.id}");
     print("Name: $name");
     print("Age: $age");
   }
 }
class StudentWithPrintable extends Student with Printable {
  StudentWithPrintable(int id, String name, int age) : super(id, name, age);
}

void main() {
  var student = StudentWithPrintable(1, 'Donia', 23);
  student.printStudentDetails();
}