import 'package:flutter/material.dart';
import 'package:widgets_test/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("first"),
      ),
      body: Center(
        child: GestureDetector(
          key: const Key("first"),
          onLongPress: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const SecondScreen()));
          },
          child: const Text(
            'first',
          ),
        ),
      ),
    );
  }
}
