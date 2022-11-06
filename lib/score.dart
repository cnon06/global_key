import 'package:flutter/material.dart';

class CounterText extends StatefulWidget {
  CounterText({Key? key}) : super(key: key);

  @override
  State<CounterText> createState() => CounterTextState();
}

class CounterTextState extends State<CounterText> {
  int _counter = 0;

  void increase() {
    _counter++;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(_counter.toString(), style: TextStyle(fontSize: 25),);
  }
}