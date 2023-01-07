import 'package:flutter/material.dart';

class CounterTemplate extends StatelessWidget {
  final String title;
  final String message;
  final int counter;
  final void Function() onPressedIncrementButton;

  const CounterTemplate({
    super.key,
    required this.title,
    required this.message,
    required this.counter,
    required this.onPressedIncrementButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressedIncrementButton,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
