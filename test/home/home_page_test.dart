import 'package:flutter/material.dart';
import 'package:flutter_demo/open_ai/open_ai_page.dart';
import 'package:flutter_demo/counter/counter_page.dart';
import 'package:flutter_demo/form/form_page.dart';
import 'package:flutter_demo/home/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../utils/utils.dart' as utils;

void main() {
  group('Counter page', (() {
    const counterPageLinkItemKey = Key('home_list_item_0');

    testWidgets('''
      Home page has counter page link item.
    ''', (tester) async {
      await utils.arrangeWidgetWithProvider(tester, const HomePage());

      expect(find.byKey(counterPageLinkItemKey), findsOneWidget);
    });

    testWidgets('''
      When tap counter page link item,
      then navigate to counter page.
    ''', (tester) async {
      await utils.arrangeWidgetWithProvider(tester, const HomePage());

      await utils.tap(tester, find.byKey(counterPageLinkItemKey));

      expect(find.byType(CounterPage), findsOneWidget);
    });
  }));

  group('Form page', (() {
    const formPageLinkItemKey = Key('home_list_item_1');

    testWidgets('''
      Home page has form page link item.
    ''', (tester) async {
      await utils.arrangeWidgetWithProvider(tester, const HomePage());

      expect(find.byKey(formPageLinkItemKey), findsOneWidget);
    });

    testWidgets('''
      When tap form page link item,
      then navigate to form page.
    ''', (tester) async {
      await utils.arrangeWidgetWithProvider(tester, const HomePage());

      await utils.tap(tester, find.byKey(formPageLinkItemKey));

      expect(find.byType(FormPage), findsOneWidget);
    });
  }));

  group('OpenAI page', (() {
    const openAIPageLinkItemKey = Key('home_list_item_2');

    testWidgets('''
      Home page has OpenAI page link item.
    ''', (tester) async {
      await utils.arrangeWidgetWithProvider(tester, const HomePage());

      expect(find.byKey(openAIPageLinkItemKey), findsOneWidget);
    });

    testWidgets('''
      When tap OpenAI page link item,
      then navigate to OpenAI page.
    ''', (tester) async {
      await utils.arrangeWidgetWithProvider(tester, const HomePage());

      await utils.tap(tester, find.byKey(openAIPageLinkItemKey));

      expect(find.byType(OpenAIPage), findsOneWidget);
    });
  }));
}
