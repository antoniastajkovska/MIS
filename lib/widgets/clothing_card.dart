import 'package:flutter/material.dart';
import '../models/clothing_item.dart';

class ClothingCard extends StatelessWidget {
  final Clothing clothing;

  const ClothingCard({super.key, required this.clothing});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white70,
      borderRadius: BorderRadius.circular(12),
      elevation: 4.0,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/details', arguments: clothing);
        },
        borderRadius: BorderRadius.circular(12),
        child: SizedBox(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.network(
                    clothing.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        clothing.name,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "${clothing.price.toStringAsFixed(2)} MKD",
                        style: const TextStyle(fontSize: 16, color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}