import 'package:flutter/material.dart';
import 'package:widgets_test/first_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second"),
      ),
      body: Center(
        child: GestureDetector(
          key: const Key("second"),
          onLongPress: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const FirstScreen()));
          },
          child: const Text(
            'second',
          ),
        ),
      ),
    );
  }
}
