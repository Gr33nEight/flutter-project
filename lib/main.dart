import 'package:flutter/material.dart';
import 'package:flutter_project_n8/views/login/login_view.dart';
import 'package:flutter_project_n8/views/register/register_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Example',
      home: LoginView(),
    );
  }
}
