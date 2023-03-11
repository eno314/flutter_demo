import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'chat_gpt/chat_gpt_page.dart';
import 'open_ai_notifier.dart';
import 'open_ai_template.dart';

class OpenAIPage extends ConsumerWidget {
  static const title = 'OpenAI DEMO';
  static const route = '/open_ai';

  const OpenAIPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OpenAITemplate(
      title: title,
      apiKeyInputLabel: 'API Key',
      apiKeyText: ref.watch(openAIApiKeyNotifierProvider),
      onChangedApiKeyInput: (value) => _onChangedApiKeyText(value, ref),
      chatGPTButtonText: 'Chat GPT DEMO',
      onPressedChatGPTButton: () => _onPressedChatGPTButton(context, ref),
    );
  }

  void _onChangedApiKeyText(String value, WidgetRef ref) {
    final notifier = ref.watch(openAIApiKeyNotifierProvider.notifier);
    notifier.onChangedApiKey(value);
  }

  void _onPressedChatGPTButton(BuildContext context, WidgetRef ref) {
    final apiKeyText = ref.read(openAIApiKeyNotifierProvider);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatGPTPage(apiKey: apiKeyText)),
    );
  }
}
