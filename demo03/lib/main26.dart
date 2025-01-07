abstract class Shape {
// 공통 적인 함수
// 메서드의 바디(구현부) 없다면 추상 메서드 이다.
  double getArea();
}
// 추상클래스

// 문제 면적을 구하는 일을 해결해야 한다.
class Circle implements Shape {
  final double radius;
  // 생성자는 가능한 축약형으로 만들자 - 우리들에 규칙
  Circle(this.radius);
  // 면적을 구하는 행위
  @override
  double getArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  final double width;
  final double heigth;

  Rectangle(this.width, this.heigth);
  // 면적을 구하는 행위
  @override
  double getArea() {
    return width * heigth;
  }
}

// 동적 바인딩을 활용한 함수를 설계해보자.
// 전역 함수
void calculateArea(Shape s) {
  // 전달된 도형의 면접을 출력하시오.
  print(s.getArea());
}

void main() {
  Shape myCircle = Circle(5.0);
  Shape myRectangle = Rectangle(4.0, 6.0);

  calculateArea(myCircle);
  calculateArea(myRectangle);
}
