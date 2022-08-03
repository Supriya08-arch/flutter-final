import 'package:flutter_test/flutter_test.dart';
import 'package:getx/pages/login/model/userModel.dart';
import 'package:getx/pages/login/repository/userRepostitory.dart';

void main() {
  late UserRepository? userRepository;
  setUp(() {
    userRepository = UserRepository();
  });
  group('User API test', () {
    test('user registration', () async {
      bool expectedResult = false;
      User user = User(
          name: 'Obsess',
          email: 'Obsess@gmail.com',
          password: 'Obsess@08',
          cPassword: 'Obsess@08');
      bool actualResult = await UserRepository().resgisterUser(user);
      expect(expectedResult, actualResult);
    });
    test('user login', () async {
      bool expectedResult = false;
      var email = 'Obsess@gmail.com';
      var password = 'Obsess@08';
      bool actual = await UserRepository().login(email, password);
      expect(actual, expectedResult);
    });
    tearDown(() {
      userRepository = null;
    });
    test('user login', () async {
      bool expectedResult = false;
      var email = 'User1@gmail.com';
      var password = 'User1@08';
      bool actual = await UserRepository().login(email, password);
      expect(actual, expectedResult);
    });
    tearDown(() {
      userRepository = null;
    });
    test('user login', () async {
      bool expectedResult = false;
      var email = 'User2@gmail.com';
      var password = 'User2@08';
      bool actual = await UserRepository().login(email, password);
      expect(actual, expectedResult);
    });
    tearDown(() {
      userRepository = null;
    });
  });
}
