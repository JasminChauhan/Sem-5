class Parent {
  void display() {
    print("Hello from Parent Class....");
  }
}

class Child extends Parent {
  @override
  void display() {
    super.display();
    print("Hello from Child Class....");
  }
}

void main() {
  Child child = Child();
  child.display();
}