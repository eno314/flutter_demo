import 'package:flutter/material.dart';
import 'package:flutter_demo/counter/counter_template.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_notifier.dart';

class CounterPage extends ConsumerWidget {
  static const title = 'Counter with Riverpod';
  static const route = '/counter';

  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterNotifierProvider);
    return CounterTemplate(
      title: title,
      message: 'You have pushed the button this many times:',
      counter: counter,
      onPressedIncrementButton: (() => _incrementCounter(ref)),
    );
  }

  void _incrementCounter(WidgetRef ref) {
    final counterNotifier = ref.read(counterNotifierProvider.notifier);
    counterNotifier.increment();
  }
}
