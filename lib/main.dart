// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:login_unittest/login_screen.dart';
import 'package:test/test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const LoginScreen(),
    );
  }
}
