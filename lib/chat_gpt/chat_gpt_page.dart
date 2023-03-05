import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatGPTPage extends ConsumerWidget {
  static const title = 'Chat GPT DEMO';
  static const route = '/chat_gpt';

  const ChatGPTPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const Center(
        child: Text(title),
      ),
    );
  }
}
