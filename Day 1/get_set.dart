class Student {
  String name = "";
  int age = 0;

  String get studName {
    return name;
  }

  void set studName(String name) {
    this.name = name;
  }

  void set studAge(int age) {
    if (age <= 0) {
      print("Age should be greater than 5");
    } else {
      this.age = age;
    }
  }

  int get studAge {
    return age;
  }
}

void main() {
  Student s1 = new Student();
  s1.studName = 'MARK';
  s1.studAge = 60;
  print(s1.studName);
  print(s1.studAge);
}
