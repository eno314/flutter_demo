import 'package:flutter/material.dart';
import 'package:flutter_demo/open_ai/open_ai_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final apiKeyInputFinder = find.byKey(const Key('apiKeyInput'));
  final chatGPTButtonFinder = find.byKey(const Key('chatGPTButton'));

  testWidgets('''
    When Page is initialized,
    Then there are 3 widgets:
      - Text (having title)
      - TextField to input api key (empty)
      - Button to move Chat GPT page (disabled)
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    expect(find.text(OpenAIPage.title), findsOneWidget);

    expect(apiKeyInputFinder, findsOneWidget);
    _assertTextFieldIsEmpty(tester, apiKeyInputFinder);

    expect(chatGPTButtonFinder, findsOneWidget);
    _assertButtonEnabled(tester, chatGPTButtonFinder, isFalse);
  });
}

Widget _buildTestWidget() {
  return MaterialApp(home: Scaffold(body: OpenAIPage()));
}

void _assertTextFieldIsEmpty(WidgetTester tester, Finder finder) {
  final textField = tester.widget<TextField>(finder);
  expect(textField.controller?.text, isEmpty);
}

void _assertButtonEnabled(WidgetTester tester, Finder finder, Matcher matcher) {
  final button = tester.widget<ElevatedButton>(finder);
  expect(button.enabled, matcher);
}
