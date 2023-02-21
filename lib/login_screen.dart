// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:login_unittest/common_widget.dart';
import 'package:login_unittest/validaton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    btnsubmit() {
      final bool? isValid = _formKey.currentState?.validate();
      if (isValid == true) {
        print("success");
      } else {
        print("fail");
      }
    }

    Widget email_field() {
      return TextFormField(
        key: const Key('email'),
          controller: email_controller,
          onChanged: (val) => {},
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Enter Email ID',
            focusColor: Colors.teal,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          validator: Validation.email_validation);
    }

    Widget password_field() {
      return TextFormField(
        key: const Key('password'),
        controller: password_controller,
        onChanged: (val) => {},
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Enter Password',
          focusColor: Colors.teal,
          errorMaxLines: 2,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        validator: Validation.password_validation,
      );
    }

    Widget btn_login() {
      return ElevatedButton(
        key: const Key('btn_login'),
        onPressed: btnsubmit,
        style: ElevatedButton.styleFrom(minimumSize: const Size(300, 40)),
        child: const Text("Login"),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Unit Test Demo'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  email_field(),
                  CommonWidget().sizebox(),
                  password_field(),
                  CommonWidget().sizebox(),
                  CommonWidget().sizebox(),
                  btn_login()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
