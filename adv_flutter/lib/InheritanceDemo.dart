class Student {
  String? name;
  int? rollNo;

  Student(this.name , this.rollNo);

  void displayStudent(String name , int rollNo){
    print("Name: ${name}");
    print("RollNo: ${rollNo}");
  }

}

class University extends Student{
  String? uniName;
  String? department;

  University(super.name , super.rollNo);

  void display() {
    super.displayStudent("dgyg", 86886);
  }
}

void main() {
  University university = University("Darshan", 324);
  university.display();
}
