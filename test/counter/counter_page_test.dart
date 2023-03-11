import 'package:flutter/material.dart';
import 'package:flutter_demo/counter/counter_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../utils/utils.dart' as utils;

void main() {
  testWidgets('''
    Counter page has a title, message, and increment button
  ''', (tester) async {
    await utils.arrangeWidgetWithProvider(tester, const CounterPage());

    const expectTitle = 'Counter with Riverpod';
    const expectMessage = 'You have pushed the button this many times:';

    expect(find.text(expectTitle), findsOneWidget);
    expect(find.text(expectMessage), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('''
    Counter initial value is 0
  ''', (tester) async {
    await utils.arrangeWidgetWithProvider(tester, const CounterPage());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });

  testWidgets('''
    When the increment button is pressed,
    Then the counter value is incremented
  ''', (tester) async {
    await utils.arrangeWidgetWithProvider(tester, const CounterPage());

    await utils.tap(tester, find.byIcon(Icons.add));

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    await utils.tap(tester, find.byIcon(Icons.add));

    expect(find.text('1'), findsNothing);
    expect(find.text('2'), findsOneWidget);
  });
}
