import 'package:flutter_demo/chat_gpt/chat_gpt_props.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatGPTInputNotifier extends StateNotifier<ChatGPTInputProps> {
  ChatGPTInputNotifier()
      : super(ChatGPTInputProps(apiKey: '', chatMessage: ''));

  void onChangedApiKey(String value) {
    state = state.copyWith(apiKey: value);
  }

  void onChangedChatMessage(String value) {
    state = state.copyWith(chatMessage: value);
  }
}

final chatGPTInputNotifierProvider =
    StateNotifierProvider<ChatGPTInputNotifier, ChatGPTInputProps>(
  (ref) => ChatGPTInputNotifier(),
);
