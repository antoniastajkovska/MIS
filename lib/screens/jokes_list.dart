import 'package:flutter/material.dart';
import 'package:joke_app/services/api_service.dart';
import '../widgets/joke_card.dart';

class JokesList extends StatefulWidget {
  const JokesList({super.key});

  @override
  State<JokesList> createState() => _JokesListState();
}

class _JokesListState extends State<JokesList> {
  List<dynamic> jokes = [];
  String type = "";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    type = ModalRoute.of(context)?.settings.arguments as String;
    fetchJokes();
  }

  void fetchJokes() async {
    try {
      final data = await ApiService.getJokesByType(type);
      setState(() => jokes = data);
    } catch (e) {
      print("Error fetching jokes: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$type Jokes")),
      body: jokes.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: jokes.length,
        itemBuilder: (context, index) {
          return JokeCard(joke: jokes[index]);
        },
      ),
    );
  }
}
