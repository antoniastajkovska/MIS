import 'package:flutter/material.dart';
import 'package:joke_app/screens/home.dart';
import 'package:joke_app/screens/jokes_list.dart';
import 'package:joke_app/screens/random_joke.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joke App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/jokes_list': (context) => const JokesList(),
        '/random_joke': (context) => const RandomJoke(),
      },
    );
  }
}
