// 믹스인을 인스턴스화 시킬 때

mixin class Engine {
  int power = 5000;
}

mixin class Wheel {
  String wheelNAme = '4륜';
}

class BMW with Engine, Wheel {}

void main() {
  BMW b = BMW();
  Engine e = Engine(); // 믹스인 클래스는 인스턴스화 가능
  Wheel w = Wheel();
  print(b.power);
}
