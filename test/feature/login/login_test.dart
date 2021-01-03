import 'package:flutter_test/flutter_test.dart';

main() {
  setUp(() {
    print('hi');
  });

  test('User Login Fail Test', () {
    final isUserLogin = true;

    expect(isUserLogin, isTrue);
  });

  group('User Login Full Test', () {
    //MARK:Test1
    test('User Login Fail Test', () {
      final isUserLogin = true;

      expect(isUserLogin, isTrue);
    });

    //MARK:Test2
    test('User Login Fail Test', () {
      final isUserLogin = true;

      expect(isUserLogin, isTrue);
    });

    //MARK:Test3
    test('User Login Fail Test', () {
      final isUserLogin = true;

      expect(isUserLogin, isTrue);
    });

    //MARK:Test4
    test('User Login Fail Test', () {
      final isUserLogin = true;

      expect(isUserLogin, isTrue);
    });
  });
}
