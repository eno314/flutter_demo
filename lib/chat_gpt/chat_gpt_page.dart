import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_demo/chat_gpt/chat_gpt_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'chat_gpt_notifier.dart';
import 'chat_gpt_props.dart';
import 'chat_gpt_template.dart';

class ChatGPTPage extends ConsumerWidget {
  static const title = 'Chat GPT DEMO';
  static const route = '/chat_gpt';

  const ChatGPTPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final input = ref.watch(chatGPTInputNotifierProvider);
    return ChatGPTTemplate(
      props: ChatGPTProps(
        title: title,
        input: input,
      ),
      onChangedApiKey: (value) => _onChangedApiKey(value, ref),
      onChangedChatMessage: (value) => _onChangedChatMessage(value, ref),
      onPressedPostButton: () => _onPressedPostButton(ref),
    );
  }

  void _onChangedApiKey(String value, WidgetRef ref) {
    final notifier = ref.watch(chatGPTInputNotifierProvider.notifier);
    notifier.onChangedApiKey(value);
  }

  void _onChangedChatMessage(String value, WidgetRef ref) {
    final notifier = ref.watch(chatGPTInputNotifierProvider.notifier);
    notifier.onChangedChatMessage(value);
  }

  void _onPressedPostButton(WidgetRef ref) async {
    final input = ref.read(chatGPTInputNotifierProvider);
    ChatGPTClient(input.apiKey).request(input.chatMessage);
  }
}
