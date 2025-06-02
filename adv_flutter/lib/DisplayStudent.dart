class Student {
  String? name;
  int? rollNo;

  void displayStudent(String name , int rollNo){
    print("Name: ${name}");
    print("RollNo: ${rollNo}");
  }

}

void main(){
  Student s1 = Student();
  s1.displayStudent("Jasmin Chauhan", 324);
}