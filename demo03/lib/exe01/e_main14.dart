// 그냥 할 뿐
import 'dart:io';

void main() {
  String? userName = getUserName();
  /*int? age = 1;
  print('age : ${age}');
  if (age != null) {
    userName = '이순신';
  }*/
  String newUserName = userName ?? '홍길동';
  print('newName ${newUserName}');

  String nullUserName = userName?.toUpperCase() ?? 'no_null';
  print('newName ${nullUserName}');
}

String? getUserName({String? name}) {
  stdout.write('이름을 입력하세요');
  String? name = stdin.readLineSync();
  // 입력 받은 이름 출력
  print('안녕하세요 : ${name}님!');
  return name;
}
