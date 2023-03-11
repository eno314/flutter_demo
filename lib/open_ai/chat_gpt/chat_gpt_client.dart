import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class ChatGPTClient {
  static const url = 'https://api.openai.com/v1/chat/completions';
  final String _apiKey;

  const ChatGPTClient(this._apiKey);

  void request(String message) async {
    final headers = {
      'Authorization': 'Bearer $_apiKey',
      'content-type': 'application/json',
    };
    final body = json.encode({
      'model': 'gpt-3.5-turbo',
      'messages': [
        {
          'role': 'user',
          'content': message,
        }
      ],
    });
    var response =
        await http.post(Uri.parse(url), headers: headers, body: body);
    log('Response status: ${response.statusCode}');
    log('Response body: ${response.body}');
  }
}
