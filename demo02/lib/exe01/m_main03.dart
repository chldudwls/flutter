void main() {
  dynamic n1 = 100;
  print(n1);
  print(n1.runtimeType);
  n1 = '정수';
  print(n1);
  print(n1.runtimeType);
  n1 = true;
  print(n1);
  print(n1.runtimeType);
  if (n1 == true) {
    n1 = 100;
    print(n1);
    print(n1.runtimeType);
    if (n1 == 100) {
      n1 = false;
      print(n1);
      print(n1.runtimeType);
    }
  }
}
