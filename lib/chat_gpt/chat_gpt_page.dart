import 'package:flutter/material.dart';
import 'package:flutter_demo/chat_gpt/chat_gpt_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatGPTPage extends ConsumerWidget {
  static const title = 'Chat GPT DEMO';
  static const route = '/chat_gpt';

  static const _apiKey = '';

  const ChatGPTPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            const ChatGPTClient(_apiKey).request();
          },
          child: const Text('Request'),
        ),
      ),
    );
  }
}
