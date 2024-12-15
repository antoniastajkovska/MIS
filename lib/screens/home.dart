import 'package:flutter/material.dart';
import 'package:joke_app/services/api_service.dart';
import 'package:joke_app/widgets/joke_type_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> jokeTypes = [];

  @override
  void initState() {
    super.initState();
    fetchJokeTypes();
  }

  void fetchJokeTypes() async {
    try {
      final types = await ApiService.getJokeTypes();
      setState(() => jokeTypes = types);
    } catch (e) {
      print("Error fetching joke types: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Joke Types"),
        actions: [
          IconButton(
            icon: const Icon(Icons.casino),
            onPressed: () => Navigator.pushNamed(context, '/random_joke'),
          ),
        ],
      ),
      body: jokeTypes.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: jokeTypes.length,
        itemBuilder: (context, index) {
          return JokeTypeCard(type: jokeTypes[index]);
        },
      ),
    );
  }
}
