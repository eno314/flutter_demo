import 'package:flutter/material.dart';
import 'package:flutter_demo/counter/counter_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('''
    Counter page has a title, message, and increment button
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    const expectTitle = 'Counter with Riverpod';
    const expectMessage = 'You have pushed the button this many times:';

    expect(find.text(expectTitle), findsOneWidget);
    expect(find.text(expectMessage), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('''
    Counter initial value is 0
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });

  testWidgets('''
    If the increment button is pressed, the counter value is incremented
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('1'), findsNothing);
    expect(find.text('2'), findsOneWidget);
  });
}

Widget _buildTestWidget() {
  // ProviderScope is required to use Riverpod
  return const ProviderScope(
    // MaterialApp is required to use Scaffold widgets
    child: MaterialApp(
      home: CounterPage(),
    ),
  );
}
