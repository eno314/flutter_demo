import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'chat_gpt_props.dart';
import 'chat_gpt_template.dart';

class ChatGPTPage extends ConsumerWidget {
  static const title = 'Chat GPT DEMO';
  static const route = '/chat_gpt';

  const ChatGPTPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ChatGPTTemplate(
      props: const ChatGPTProps(
        title: title,
        input: ChatGPTInputProps(
          apiKey: '',
          chatMessage: '',
        ),
      ),
      onChangedApiKey: (value) => {},
      onChangedChatMessage: (value) => {},
      onPressedPostButton: () => {},
    );
  }
}
