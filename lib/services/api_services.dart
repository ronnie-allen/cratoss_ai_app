import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final String apiKey;

  ApiService() : apiKey = dotenv.env['GOOGLE_AI_API_KEY']!; // Ensure the key matches

  Future<String> generateText(String input) async {
    final url = Uri.parse('https://generativelanguage.googleapis.com/v1/models/gemini-pro:generateContent');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };
    final body = json.encode({'input': input});

    try {
      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['text']; // Adjust based on the actual response format
      } else {
        throw Exception('Failed to generate text');
      }
    } catch (e) {
      print("Error generating text: $e");
      return "Sorry, something went wrong.";
    }
  }
}
