import 'dart:math';

bool isPrime (p) {
  // only check for odd numbers greater than 2
  int lim = sqrt(p).toInt();
  int i = 3;
  while (i <= lim) {
    if (p % i == 0) {
      return false;
    }
    i += 2;
  }
  return true;
}

int nextPrime (p) {
  // assuming p is an odd prime
  int q = p + 2;
  while (! isPrime(q)) {
    q += 2;
  }
  return q;
}