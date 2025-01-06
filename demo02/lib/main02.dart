// 코드의 시작점
void main() {
  // 타입 확인 - runtimeType 의 활용
  // 디버깅 밒 오류 방지
  // 예상치 못한 타입의 값이 들어올 경우, 프로그램이 재대로 동작하지 않을 수 있다.
  // runtimeType을 활용해서 타입 체크를 할 수 있다.
  /*
  런타임 시점 - 서버를 실행하고 있을때
  컴파일 시점 - 서버를 실행할때
  */
  int n1 = 10; //= 의 오른쪽에 있는것을 리터럴이라 한다
  double d1 = 10.0;
  bool b1 = true;
  String s1 = '홍길둥'; // 흩따옴표 권장 사항

  print('정수: ${n1.runtimeType}');
  print('실수: ${d1.runtimeType}');
  print('정수: ${b1.runtimeType}');
  print('정수: ${s1.runtimeType}');
}
