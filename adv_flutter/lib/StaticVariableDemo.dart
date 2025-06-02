class Student {
  static int  counter = 1;
}

class Hello {
  void incrementCounter(){
    Student.counter = Student.counter++;
  }
}

class Hey{
  void incrementCounter() {
    Student.counter = Student.counter++;
  }
}

void main() {
  Hello hello = Hello();
  Hey hey = Hey();

  hello.incrementCounter();
  hey.incrementCounter();

  // In both class we are doing post increment so value will not change if we do pre increment this value will change.
  // Both Class Pre Increment then Value 3 otherwise Value 1
  // One Class Pre Increment Then Value 2
  print("Counter Value : ${Student.counter}");
}