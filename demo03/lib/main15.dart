// null 억제 연산자(!)
// 개발자가 해당 값이 null 아님을 확신하고, 예아룰 발생시키지 않을 때 유용하게 사용할 수 있다.
void main() {
  // 이 코드는 절대 널이 될 수 없다.
  String? nullableName = getNullableName();
  // 1. 널 억제 연산자 사용해 보기
  // 널체크 연산자 또는 널병합 연산자를 사용할 수 있지만
  // null 아님을 확신 한다면 개발자가 널 억제 연산자를 사용할 수 있다.
  String forcedName = nullableName!;
  print('forcedName = ${forcedName}');
}

String? getNullableName() {
  // return null은 오류가 난다
  return '홍길동';
}
