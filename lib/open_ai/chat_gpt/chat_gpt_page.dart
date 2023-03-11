import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatGPTPage extends ConsumerWidget {
  static const title = 'Chat GPT DEMO';

  final String apiKey;

  const ChatGPTPage({
    super.key,
    required this.apiKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('api key : $apiKey');
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
