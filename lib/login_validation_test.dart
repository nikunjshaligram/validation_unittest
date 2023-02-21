import 'package:login_unittest/validaton.dart';
import 'package:test/test.dart';

void main() {
  //empty email & password

  group('validation check', ()
  {
    test("empty field returns error", () {
      String? result = Validation.validateEmpty("");
      expect(result, "please enter emil address & password");
    });

    test("field not empty returns null", () {
      String? result = Validation.validateEmpty("asd");
      expect(result, null);
    });

    //email

    test("email field empty returns error", () {
      String? result = Validation.email_validation("");
      expect(result, "please enter email address");
    });

    test("incorrectly email returns error", () {
      String? result = Validation.email_validation("testgmail.com");
      expect(result, 'please enter a valid email address');
    });

    test("correctly email returns null", () {
      String? result = Validation.email_validation("test@gmail.com");
      expect(result, null);
    });

    //password

    test("password field empty returns error", () {
      String? result = Validation.password_validation("");
      expect(result, "please enter password");
    });

    test("incorrectly password returns error", () {
      String? result = Validation.password_validation("asddsaasdsda");
      expect(result,
          "Password must be contain least 8 letters one lowercase and one uppercase letter one digit.");
    });

    test("correctly password returns null", () {
      String? result = Validation.password_validation("Test@1234");
      expect(result, null);
    });
  });
}
