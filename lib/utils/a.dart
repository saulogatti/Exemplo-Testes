void callPrivateMethod(A a) {
  a._privateMethod();
}

class A {
  void _privateMethod() {
    print('I inherited from A');
  }
}
