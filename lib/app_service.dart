import 'dart:math';

class Singleton {
  static int _randomNumber = 0;
  static Random random = Random();

  Singleton() {
    _randomNumber = random.nextInt(100);
  }

  int get randomNumber => _randomNumber;
}

class Factory {
  int _randomNumber = 0;
  Random random = Random();

  Factory() {
    _randomNumber = random.nextInt(100);
  }
  int get numero => _randomNumber;
}
