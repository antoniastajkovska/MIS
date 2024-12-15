import 'package:flutter/material.dart';

class JokeTypeCard extends StatelessWidget {
  final String type;

  const JokeTypeCard({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/jokes_list', arguments: type),
      child: Card(
        child: Center(
          child: Text(
            type.toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
