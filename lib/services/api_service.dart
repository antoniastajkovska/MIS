import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:joke_app/models/joke_model.dart';

class ApiService {
  static const String baseUrl = "https://official-joke-api.appspot.com";

  static Future<List<String>> getJokeTypes() async {
    final response = await http.get(Uri.parse("$baseUrl/types"));
    if (response.statusCode == 200) {
      return List<String>.from(jsonDecode(response.body));
    } else {
      throw Exception("Failed to fetch joke types");
    }
  }

  static Future<List<Joke>> getJokesByType(String type) async {
    final response = await http.get(Uri.parse("$baseUrl/jokes/$type/ten"));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Joke.fromJson(json)).toList();
    } else {
      throw Exception("Failed to fetch jokes by type");
    }
  }

  static Future<Joke> getRandomJoke() async {
    final response = await http.get(Uri.parse("$baseUrl/random_joke"));
    if (response.statusCode == 200) {
      return Joke.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to fetch random joke");
    }
  }
}
