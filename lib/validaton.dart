// ignore_for_file: non_constant_identifier_names, unnecessary_null_comparison

class Validation {
  static String? validateEmpty(String? val) {
    if (val!.isEmpty) {
      return "please enter emil address & password";
    } else {
      return null;
    }
  }

  static String? email_validation(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (value!.isNotEmpty) {
      bool emailValid = regex.hasMatch(value);
      return emailValid ? null : "please enter a valid email address";
    }
    else {
      return "please enter email address";
    }
  }

  static String? password_validation(String? value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    if (value!.isNotEmpty) {
      bool passVerified = RegExp(pattern).hasMatch(value);
      return passVerified
          ? null
          : "Password must be contain least 8 letters one lowercase and one uppercase letter one digit.";
    } else {
      return "please enter password";
    }
  }
}
