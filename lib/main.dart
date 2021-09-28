import 'package:flutter/material.dart';
import 'package:practice/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.lightBlue[900],
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
