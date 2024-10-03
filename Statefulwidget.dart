import 'package:flutter/material.dart';


class Counter extends StatefulWidget {


  const Counter({super.key});


  @override
  State<Counter> createState() =>
  _CounterState();


} // Counter


class _CounterState extends State<Counter> {
  int _counter = 0;


  void _increment(){
    setState(() {
       _counter++;  
    }); // setState
  } // _increment


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment,
          child: const Text('Increment'),
        ),
          const SizedBox(width: 16),
          Text('Count: $_counter'),
      ]
    );
  } // build
} // _CounterState


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  ); // runApp
} // main
