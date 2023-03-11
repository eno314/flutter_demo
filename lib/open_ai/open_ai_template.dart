import 'package:flutter/material.dart';

class OpenAITemplate extends StatelessWidget {
  final String title;
  final String apiKeyInputLabel;
  final String apiKeyText;
  final String chatGPTButtonText;
  final VoidCallback onPressedChatGPTButton;

  const OpenAITemplate({
    super.key,
    required this.title,
    required this.apiKeyInputLabel,
    required this.apiKeyText,
    required this.chatGPTButtonText,
    required this.onPressedChatGPTButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _buildList(context),
    );
  }

  Widget _buildList(BuildContext context) {
    return ListView(
      children: [
        _buildApiKeyInput(),
        _buildChatGPTButton(),
      ],
    );
  }

  Widget _buildApiKeyInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: TextField(
        key: const Key('apiKeyInput'),
        controller: TextEditingController(text: apiKeyText),
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: apiKeyInputLabel,
        ),
      ),
    );
  }

  Widget _buildChatGPTButton() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: ElevatedButton(
          key: const Key('chatGPTButton'),
          onPressed: _isApiKeyInputEmpty() ? null : onPressedChatGPTButton,
          child: Text(chatGPTButtonText),
        ),
      ),
    );
  }

  bool _isApiKeyInputEmpty() {
    return apiKeyText.isEmpty;
  }
}
