import 'package:flutter/material.dart';
import 'screens/clothing_list_screen.dart';
import 'screens/details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothing App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ClothingListScreen(),
        '/details': (context) => const DetailsScreen(),
      },
    );
  }
}