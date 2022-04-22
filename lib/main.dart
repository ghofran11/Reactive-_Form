import 'package:flutter/material.dart';
import 'package:test_reactive_form/sampels/login_sample.dart';
import 'package:test_reactive_form/sample_screen.dart';

import 'sampels/login_sample2.dart';
import 'sampels/simple_sample.dart';

void main() {
  runApp(const MyApp());
}
class Routes{
  static const loginSample = '/';
  static const login = '/login_sample';
  static const simple = '/simple_sample';
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        Routes.loginSample:(_)=> LoginSampel(),
        Routes.simple:(_)=> SimpleSample(),
        Routes.login:(_)=>LogIn(),
      },
    );
  }
}

