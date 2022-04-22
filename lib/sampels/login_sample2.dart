import 'package:flutter/material.dart';
import 'package:test_reactive_form/sample_screen.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
        title:const Text('Login'),
        body: Container(
          color: Colors.teal,
        )
    );
  }
}
