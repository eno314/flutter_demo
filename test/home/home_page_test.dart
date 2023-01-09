import 'package:flutter/material.dart';
import 'package:flutter_demo/counter/counter_page.dart';
import 'package:flutter_demo/home/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter page', (() {
    const counterPageLinkItemKey = Key('home_list_item_0');

    testWidgets('''
      Home page has counter page link item.
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      expect(find.byKey(counterPageLinkItemKey), findsOneWidget);
    });

    testWidgets('''
      When tap counter page link item,
      then navigate to counter page.
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      await tester.tap(find.byKey(counterPageLinkItemKey));
      await tester.pumpAndSettle();

      expect(find.byType(CounterPage), findsOneWidget);
    });
  }));
}

Widget _buildTestWidget() {
  return const ProviderScope(child: HomePage());
}
