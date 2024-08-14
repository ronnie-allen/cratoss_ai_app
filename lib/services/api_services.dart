import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String _url = 'http://192.168.231.153:8000/chat';

  Future<String> sendMessage(String message) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    final body = json.encode({'message': message});

    try {
      final response = await http.post(Uri.parse(_url), headers: headers, body: body);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['response']; // Adjust based on your API's response format
      } else {
        throw Exception('Failed to get response: ${response.statusCode}');
      }
    } catch (e) {
      print("Error sending message: $e");
      return "Sorry, something went wrong.";
    }
  }
}
