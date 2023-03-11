import 'package:flutter/material.dart';
import 'package:flutter_demo/open_ai/chat_gpt/chat_gpt_page.dart';
import 'package:flutter_demo/open_ai/open_ai_page.dart';
import 'package:flutter_test/flutter_test.dart';
import '../utils/utils.dart' as utils;

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
    await utils.arrangeWidgetWithProvider(tester, const OpenAIPage());

    expect(find.text(OpenAIPage.title), findsOneWidget);

    expect(apiKeyInputFinder, findsOneWidget);
    utils.assertTextFieldText(tester, apiKeyInputFinder, isEmpty);

    expect(chatGPTButtonFinder, findsOneWidget);
    utils.assertButtonEnabled(tester, chatGPTButtonFinder, isFalse);
  });

  testWidgets('''
    When apiKeyInput has value,
    Then ChatGPTButton is enabled.
  ''', (tester) async {
    await utils.arrangeWidgetWithProvider(tester, const OpenAIPage());

    await utils.inputText(tester, apiKeyInputFinder, 'test');

    utils.assertButtonEnabled(tester, chatGPTButtonFinder, isTrue);
  });

  testWidgets('''
    When ChatGPTButton is pressed,
    Then move to Chat GPT page.
  ''', (tester) async {
    await utils.arrangeWidgetWithProvider(tester, const OpenAIPage());

    await utils.inputText(tester, apiKeyInputFinder, 'test');
    await utils.tap(tester, chatGPTButtonFinder);

    expect(find.byType(ChatGPTPage), findsOneWidget);
  });
}
