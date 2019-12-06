class Person {
  int age = 18;

  int compareFriendsAges(int age) {
    //ussando o this refere ao atributo do objeto
    return this.age - age;
  }
}

void main() {
  Person person = Person();

  print(person.compareFriendsAges(12));
}
