import 'package:flutter_test/flutter_test.dart';
import 'package:testing/function.dart';

void main() {
  group('Math tests', () {
    test('Test the factorial function', () {
      final test = getFactorial(5);

      expect(test, 120);
    });
    test('Test the addition function', () {
      final test = addition(5, 5);

      expect(test, 10);
    });
  });

    group('Api tests', () {
    test('Test the factorial function', () {
      final test = getFactorial(5);

      expect(test, 120);
    });
    test('Test the addition function', () {
      final test = addition(5, 5);

      expect(test, 10);
    });
  });
}
