// 널 체크 연산자(?.) 와 널 병합 연잔자 (??) 에 대해서 알아보자.
// 코드의 시작점

void main() {
  // 1. 널 체크 연산자
  String? userName = getNullableUserName();
  // 널 체크 연산자
  int? userNameLength = userName?.length;

  print('사용자 이름의 길이 값 : ${userNameLength}');
  print('------------------------');
  // 2, 널 병합 연샂나
  String finalUserName = userName ?? '홍길동';
  print('finalUserName : ${finalUserName}');

  // ?. 와 ?? 를 함께 사용하는 예시
  String upperOrNoNane =
      userName?.toUpperCase() ?? 'NO_NAME'; //널이 아니면 toUpp가 요청
  print('upperOrNoName ${upperOrNoNane}');
} //end of main

// 함수를 만들어 보자.
// 선택적 명명 매개변수{}
String? getNullableUserName({String? name}) {
  return name; //아무것도 안넣으면 null 이 리턴
}
