void main() {
  // Exercise 1
  print("\nExercise 1;");
  print("Hi-Kod");

  // Exercise 2
  print("\nExercise 2;");
  String name = "Orkun Alp";
  int age = 21;
  double height = 180.00;
  bool isStudent = true;

  print("Name: $name");
  print("Age: $age");
  print("Height: $height cm");
  print("Is a student: $isStudent");

  // Exercise 3
  print("\nExercise 3;");
  int a = 10;
  int b = 5;
  int c = 20;

  int sum = a + b;
  int difference = a - b;
  int product = a * b;
  double quotient = a / b;
  double result = ((a - b) * c / (a + b)) * (a * b * c);

  print("Sum: $sum");
  print("Difference: $difference");
  print("Product: $product");
  print("Quotient: $quotient");
  print("Result: ${result.toStringAsFixed(2)}");

  // Exercise 4
  print("\nExercise 4;");
  int charge = 101;
  if (charge == 100) {
    print("Telefon şarj edildi!");
  } else if (charge >= 10 && charge < 20) {
    print("Telefonunuzu şarj edin!");
  } else if (charge < 10 && charge > 0) {
    print("Telefonunuzu şarj edin!");
  } else if (charge == 0) {
    print("Telefonunuz kapandı!");
  } else {
    print("Telefon uzaydan geldi herhalde");
  }

  // Exercise 5
  print("\nExercise 5;");
  myFunction("Orkun Alp", 21, 180.00, "kırmızı");
}

// Exercise 5 Function
void myFunction(String name, int age, double height, String favoriteColor) {
  print("Merhaba, ben $name, $age yaşındayım. Boyum $height ve en sevdiğim renk $favoriteColor.");
}