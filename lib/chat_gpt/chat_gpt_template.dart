import 'package:flutter/material.dart';

import 'chat_gpt_props.dart';

class ChatGPTTemplate extends StatelessWidget {
  final ChatGPTProps props;
  final ValueChanged<String> onChangedApiKey;
  final ValueChanged<String> onChangedChatMessage;
  final VoidCallback onPressedPostButton;

  const ChatGPTTemplate({
    super.key,
    required this.props,
    required this.onChangedApiKey,
    required this.onChangedChatMessage,
    required this.onPressedPostButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(props.title),
      ),
      body: _buildList(context),
    );
  }

  Widget _buildList(BuildContext context) {
    return ListView(
      children: [
        _buildInputApiKey(),
        // _buildInputChatType(),
        _buildInputChatMessage(),
        _buildPostButton(),
      ],
    );
  }

  Widget _buildInputApiKey() {
    return _buildTextField(
      'inputApiKey',
      'API Key',
      props.input.apiKey,
      onChangedApiKey,
    );
  }

  Widget _buildInputChatMessage() {
    return _buildTextField(
      'inputChatMessage',
      'Chat Message',
      props.input.chatMessage,
      onChangedChatMessage,
    );
  }

  Widget _buildPostButton() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: ElevatedButton(
          key: const Key('postButton'),
          onPressed: props.isEnabledPostButton() ? onPressedPostButton : null,
          child: const Text('POST'),
        ),
      ),
    );
  }

  Widget _buildTextField(
    String key,
    String textFieldLabel,
    String? textFieldValue,
    ValueChanged<String> onChangedTextField,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: TextField(
        key: Key(key),
        controller: TextEditingController(text: textFieldValue),
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: textFieldLabel,
        ),
        onChanged: onChangedTextField,
      ),
    );
  }
}
