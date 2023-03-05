import 'dart:convert';

import 'package:http/http.dart' as http;

class ChatGPTClient {
  static const url = 'https://api.openai.com/v1/chat/completions';
  final String _apiKey;

  const ChatGPTClient(this._apiKey);

  void request() async {
    final headers = {
      'Authorization': 'Bearer $_apiKey',
      'content-type': 'application/json',
    };
    final body = json.encode({
      'model': 'gpt-3.5-turbo',
      'messages': [
        {
          'role': 'user',
          'content': 'ChatGPTのおすすめの使い方はありますか',
        }
      ],
    });
    var response =
        await http.post(Uri.parse(url), headers: headers, body: body);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
