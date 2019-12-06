
class Person {

  String name;
  int age;
  double height;

  void birthday() {
    age++;
  }

  void sleep() {
    print("$name está dormindo!");
  }

}

void main() {

  Person pessoa1 = Person();
  pessoa1.name = "João";
  pessoa1.age = 30;
  pessoa1.height = 1.80;

  Person pessoa2 = Person();
  pessoa2.name = "Thiago";
  pessoa2.age = 28;
  pessoa2.height = 1.90;

  print(pessoa1.name);
  print(pessoa2.name);

  print(pessoa1.age);
  pessoa1.birthday();
  print(pessoa1.age);

  pessoa2.sleep();

}