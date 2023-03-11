import 'package:flutter_riverpod/flutter_riverpod.dart';

class OpenAIApiKeyNotifier extends StateNotifier<String> {
  OpenAIApiKeyNotifier() : super('');

  void onChangedApiKey(String value) => state = value;
}

final openAIApiKeyNotifierProvider =
    StateNotifierProvider<OpenAIApiKeyNotifier, String>(
  (ref) => OpenAIApiKeyNotifier(),
);
