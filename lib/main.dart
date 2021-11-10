import 'package:flutter/material.dart';
import 'package:form_design/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300]
      ),
    );
  }
}