/*
  추상 클래스
  추상적인 클래스 입니다. 떄문에 인스턴스화 시킬수 없다.

  추상클래스는 완전한 구현들을 제공하지 않는 클래스로 상속을
  통해 다른 클래스가 이를 확장하여 구체적인 동작을 구현하도록
  강제할수 있는 클래스 입니다.
  추상 클래스는 좀더 일반화적인 개념을 표현하며, 공통된 속성과 메서드를 정의하는데
  보통 많이 활용합니다.

  시나리오 코드 1
  일반 클래스를 만들어 보자

*/
//유아용 동물 소리 프로그램을 간단하게 만들어 보자

class Dog {
  void performAction() {
    print('멍배멍고멍파');
  }
}

class Fish {
  void hungry() {
    print('뻐금 배고파');
  }
}

class Cat {
  void perfotmAction() {
    print('야옹');
  }
}

void mian() {
  Dog d = Dog();
  Cat c = Cat();

  Fish f = Fish();
  f.hungry();

  // f.performAction(); 동적인 코드로 돌렸다면 오류 발생 된다. 팀장의 잘못
}
