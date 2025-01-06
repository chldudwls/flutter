// super 키워드는 자식이 부모의 객체를 참조할 수 있는 키워드 입니다.
class Burger {
  String? name;
  Burger() {
    print('버거 생성자 호출()');
  }
}

class CheeseBurger extends Burger {
  CheeseBurger(String name) {
    print('치즈버거 생성자 호출()');
    super.name = name;
  }
}

void main() {
  CheeseBurger ch = CheeseBurger('불고기 치즈 버거'); // 강제성이 생긴다
  print('name 호출 : ${ch.name}');
  // 문제 - 사용시점, 치즈버거 생성자 호출시 인수로 전달 받은 문자열을
  // 부모 클래스인 name 변수에 저장하고 싶다면 어떻게 코드를 작성하지?
}
