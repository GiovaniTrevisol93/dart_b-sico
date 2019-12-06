main() {
  var circle = Circle();
//  print(circle.pi);
//  circle.calculateArea();

  print(Circle.pi);
  Circle.pi = 6.14;
  print(Circle.pi);
}

class Circle {
  static double pi = 3.14;
//  static const double pi = 3.14;

  static void calculateArea() {
    print('Algum código que calcule a área');
  }
}
