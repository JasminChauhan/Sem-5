abstract class Person {
  void breath();

}

class Student extends Person{
  @override
  void breath() {
    print("Person is breathing....");
  }
}

void main() {
  Student student = Student();
  student.breath();
}
