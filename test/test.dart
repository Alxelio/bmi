import 'package:test/test.dart';
import 'package:teste/exceptions.dart';

void main() {
  group('Exceptions', () {
    test('Check Comma Point Conversion', () {
      final exceptions = Exceptions();

      exceptions.weightt = '75,5';
      exceptions.heightt = '1.75';

      final person = exceptions.checkCommaPoint();

      expect(person.namee, equals("Cauculus"));
      expect(person.weightt, equals("75.5"));
      expect(person.heightt, equals("1.75"));
    });

    test('Invalid Input Throws Exception', () {
      final exceptions = Exceptions();

      exceptions.weightt = '0';
      exceptions.heightt = '1.75';

      expect(() => exceptions.checkCommaPoint(), throwsException);
    });
  });
}
