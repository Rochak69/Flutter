//Optional parameters
void main() {
  test_param(666);
}

test_param(n1, [s1]) {
  print(n1);
  print(s1);
  main2();
  main3();
}

//Optinal named parameters
void main2() {
  test_param2(123);
  test_param2(123, s1: 'hello');
  test_param2(123, s2: 'hello', s1: 'world');
}

test_param2(n1, {s1, s2}) {
  print(n1);
  print(s1);
}

//optional with default values
void main3() {
  test_param3(100);
}

void test_param3(n1, {s1: 12}) {
  print(n1);
  print(s1);
}
