import 'package:flutter/material.dart';
import 'package:joke_app/models/joke_model.dart';
import 'package:joke_app/services/api_service.dart';

class RandomJoke extends StatefulWidget {
  const RandomJoke({super.key});

  @override
  State<RandomJoke> createState() => _RandomJokeState();
}

class _RandomJokeState extends State<RandomJoke> {
  Joke? randomJoke;

  @override
  void initState() {
    super.initState();
    fetchRandomJoke();
  }

  void fetchRandomJoke() async {
    try {
      final joke = await ApiService.getRandomJoke();
      setState(() => randomJoke = joke);
    } catch (e) {
      print("Error fetching random joke: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Joke of the Day")),
      body: randomJoke == null
          ? const Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(randomJoke!.setup, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Text(
              randomJoke!.punchline,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
