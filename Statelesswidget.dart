import 'package:flutter/material.dart';

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


class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MP1',
      home: const _CounterState(title: 'MP1'),
    );
  }
}

class _CounterState extends StatefulWidget {
  const _CounterState({super.key, required this.title});

  final String title;

  @override
  State<_CounterState> createState() => _MyCounterState();
}

class _MyCounterState extends State<_CounterState> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,     children: <Widget>[
      ElevatedButton(
        onPressed: _increment,
        child: const Text('Increment'),
      ),
      const SizedBox(width: 16),
      Text('Count: $_counter'),
    ]);
  } // build
}
