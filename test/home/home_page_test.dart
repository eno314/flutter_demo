import 'package:flutter/material.dart';
import 'package:flutter_demo/chat_gpt/chat_gpt_page.dart';
import 'package:flutter_demo/counter/counter_page.dart';
import 'package:flutter_demo/form/form_page.dart';
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

  group('Form page', (() {
    const formPageLinkItemKey = Key('home_list_item_1');

    testWidgets('''
      Home page has form page link item.
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      expect(find.byKey(formPageLinkItemKey), findsOneWidget);
    });

    testWidgets('''
      When tap form page link item,
      then navigate to form page.
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      await tester.tap(find.byKey(formPageLinkItemKey));
      await tester.pumpAndSettle();

      expect(find.byType(FormPage), findsOneWidget);
    });
  }));

  group('Chat GPT page', (() {
    const chatGPTPageLinkItemKey = Key('home_list_item_2');

    testWidgets('''
      Home page has chat GPT page link item.
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      expect(find.byKey(chatGPTPageLinkItemKey), findsOneWidget);
    });

    testWidgets('''
      When tap chat GPT page link item,
      then navigate to chat GPT page.
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      await tester.tap(find.byKey(chatGPTPageLinkItemKey));
      await tester.pumpAndSettle();

      expect(find.byType(ChatGPTPage), findsOneWidget);
    });
  }));
}

Widget _buildTestWidget() {
  return const ProviderScope(child: HomePage());
}
