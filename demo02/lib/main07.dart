// 논리 연산자
void main() {
  bool isRainy = true;
  bool hasUmbrella = false;

  // and   a : a true
  print(isRainy && hasUmbrella);
  print(hasUmbrella && isRainy); // 빠른 평가 이미 정의를해서 할필요가 없다

  print(isRainy || hasUmbrella);
  print(hasUmbrella || isRainy);
  print(!isRainy);
  /*
  3/ ~/
  4/ double
  5/ 안됨
  6/ 10 & 13
  7/ 1.t/2.f/3.t/4.f
  8/ 1
  9/ 4
  10/ 정적?int?


  */
}
