import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_gpt_props.freezed.dart';

class ChatGPTProps {
  final String title;
  final ChatGPTInputProps input;

  const ChatGPTProps({
    required this.title,
    required this.input,
  });

  isEnabledPostButton() {
    return input.apiKey.isNotEmpty && input.chatMessage.isNotEmpty;
  }
}

@freezed
class ChatGPTInputProps with _$ChatGPTInputProps {
  factory ChatGPTInputProps({
    required String apiKey,
    required String chatMessage,
  }) = _ChatGPTInputProps;
}
