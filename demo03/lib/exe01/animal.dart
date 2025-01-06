class Anmal {
  String? name;
  Anmal(String? name) {
    this.name = name;
  }
}

class Dog extends Anmal {
  Dog(String? name) : super(name) {
    //this.name = '말티즈';
  }
}

void main() {
  Dog dog = Dog('시츄');
  String? dogBark = getBark('');
  print('강아지 이름 : ${dog.name} 강아지 소리 : ${dogBark}');
}

String getBark(String bark) {
  return '멍멍';
}
