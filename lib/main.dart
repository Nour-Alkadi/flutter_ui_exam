import 'package:flutter/material.dart';
import 'package:flutter_ui_exam/classes/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
       home: SignInPage());
  }
}