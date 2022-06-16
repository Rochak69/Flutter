//Optional parameters
void main() {
  testParam(666);
}

testParam(n1, [s1]) {
  print(n1);
  print(s1);
  main2();
  main3();
}

//Optinal named parameters
void main2() {
  testParamTwo(123);
  testParamTwo(123, s1: 'hello');
  testParamTwo(123, s2: 'hello', s1: 'world');
}

testParamTwo(n1, {s1, s2}) {
  print(n1);
  print(s1);
}

//optional with default values
void main3() {
  testParamThree(100);
}

void testParamThree(n1, {s1: 12}) {
  print(n1);
  print(s1);
}
