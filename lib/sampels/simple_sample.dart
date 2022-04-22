import 'package:flutter/material.dart';

import '../sample_screen.dart';
class SimpleSample extends StatelessWidget {
  const SimpleSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
        title: const Text('Sampel'),
        body:Container(color: Colors.teal,
        )
    );
  }
}
