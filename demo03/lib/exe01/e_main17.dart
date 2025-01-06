import 'dart:io';

class Player {
  String? name;
  int? power;
  int? hp;

  Player(this.name, this.power, this.hp); // 생성자에서 name을 받도록 수정
}

class Wizard extends Player {
  String attack = '얼음 마법 공격';
  Wizard(String? name, int? power, int? hp) : super(name, power, hp);
}

class Warrior extends Player {
  String attack = '2단 콤보 공격';
  Warrior(String? name, int? power, int? hp) : super(name, power, hp);
}

void main() {
  String? playerName = getPlayerName(); // getPlayerName 함수에서 name을 받아옵니다.

  Wizard wi = Wizard(playerName, 2000, 1000);

  Warrior wa = Warrior(playerName, 1000, 800);
  if (playerName == '전사') {
    print(
        '직업 : ${wa.name}, 공격력 : ${wa.power} , 체력 : ${wa.hp} 전사 공격 :${wa.attack}');
  } else {
    print(
        '직업 : ${wi.name}, 마법공격력 : ${wi.power} , 체력 : ${wi.hp} 마법사 공격 : ${wi.attack}');
  }
}

String? getPlayerName({String? name}) {
  stdout.write('1번 전사, 2번 마법사');
  String? input = stdin.readLineSync();
  if (input == '1') {
    return '전사';
  } else {
    return '마법사';
  }
}
