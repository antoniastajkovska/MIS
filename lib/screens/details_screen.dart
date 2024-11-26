import 'package:flutter/material.dart';
import '../models/clothing_item.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Clothing clothing = ModalRoute.of(context)!.settings.arguments as Clothing;

    return Scaffold(
      appBar: AppBar(
        title: const Text("211048"),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(clothing.image, fit: BoxFit.cover, height: 250, width: double.infinity),
            const SizedBox(height: 16),
            Text(clothing.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("${clothing.price} MKD", style: const TextStyle(fontSize: 20, color: Colors.green)),
            const SizedBox(height: 16),
            Text(clothing.description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}