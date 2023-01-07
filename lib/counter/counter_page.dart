import 'package:flutter/material.dart';
import 'package:flutter_demo/counter/counter_template.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_notifier.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CounterTemplate(
      title: 'Counter with Riverpod',
      message: 'You have pushed the button this many times:',
      counter: ref.watch(counterProvider),
      onPressedIncrementButton: (() => _incrementCounter(ref)),
    );
  }

  void _incrementCounter(WidgetRef ref) {
    final notifier = ref.read(counterProvider.notifier);
    notifier.increment();
  }
}
