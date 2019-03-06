import 'package:dart_game/prime.dart';
import 'package:dart_game/solutions.dart';
import 'dart:math';

caller(someFunction) {
  final stopwatch = Stopwatch()
    ..start();
  var result = someFunction();
  print('executed in ${stopwatch.elapsed}');
  print("Running ${someFunction}");
  return result;
}

main() {
  var funToCall = euler003;
  print("The result is ${caller(funToCall)}");
}
