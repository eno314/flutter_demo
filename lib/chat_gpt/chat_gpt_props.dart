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

class ChatGPTInputProps {
  final String apiKey;
  final String chatMessage;

  const ChatGPTInputProps({
    required this.apiKey,
    required this.chatMessage,
  });
}
