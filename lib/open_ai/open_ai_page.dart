import 'dart:developer';

import 'package:flutter/material.dart';
import 'open_ai_template.dart';

class OpenAIPage extends StatelessWidget {
  static const title = 'OpenAI DEMO';
  static const route = '/open_ai';

  final _apiKeyInputController = TextEditingController();

  OpenAIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OpenAITemplate(
      title: title,
      apiKeyInputLabel: 'API Key',
      apiKeyText: '',
      chatGPTButtonText: 'Chat GPT DEMO',
      onPressedChatGPTButton: () => _onPressedChatGPTButton(context),
    );
  }

  void _onPressedChatGPTButton(BuildContext context) {
    // move to ChatGPTPage
    log('api key : ${_apiKeyInputController.text}');
  }
}
