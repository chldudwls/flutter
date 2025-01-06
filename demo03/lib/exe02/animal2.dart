// 소문자연결대문자 - 카멜
// 표기법 - 파스칼 케이스
class Animal {
  // 상수 (final) - 한 번은반드시 초기화 되어야 하는 변수.
  final String name;
  // 생성자 (강제성) 사용자 정의 생성자
  Animal(this.name); //{}
}

// Dog 는 동물 이다 <-- 다형성 적용
class Dog extends Animal {
  Dog(String name) : super(name);
  void bark() {
    print('뭉멍');
  }
}

// 코드의 시작 점 (실행 시)
void main() {
  Dog d1 = Dog('길동이');
  print(d1.name);
  d1.bark();

  Dog d2 = Dog('흰둥이');
  print(d2.name);
  d2.bark();
}
