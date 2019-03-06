import 'dart:math';
import 'package:dart_game/prime.dart';

int euler001 () {
  int result = 0;
  for (int i = 1; i < 1000; i++) {
    if ((i % 3 == 0) || (i % 5 == 0)){
      result += i;
    }
  }
  return result;
}

int euler002 () {
  int res = 0;int i = 1;int j = 1;int k = 1;
  while (i <= 4000000) {
    if (i % 2 == 0) {
      res += i;
    }
    k = i;i = j;j += k;
  }
  return res;
}

int euler003 () {
  int res = 0;
  for (int i = 3; i < 20 ; i += 2) {
    if (isPrime(i)) {
      print(i);
      res += i;
    }
  }
  return res;
}