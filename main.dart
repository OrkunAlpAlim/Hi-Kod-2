void main() {
  print("Hello World!");
  bool isWorking = false;
  int age = 21;
  String name = "Orkun";
  double favNum = 61.5;
  personalInfo(name, age, favNum, isWorking);
}

void personalInfo(String name, int age, double favNum, bool isWorking) {
  print("My name is $name");
  print("I am $age years old");
  print("My favorite number is $favNum");
  if (isWorking) {
    print("I am working");
  } else {
    print("I am a lazy");
  }
}
