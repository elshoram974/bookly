import 'package:flutter/material.dart';

class PriceAndReview extends StatelessWidget {
  const PriceAndReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 20),
            children: [
              TextSpan(text: "19.99"),
              TextSpan(text: " €", style: TextStyle(fontSize: 15)),
            ],
          ),
        ),
        const Spacer(),
        RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 16),
            children: [
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Icon(Icons.star, color: Colors.amber),
              ),
              TextSpan(text: " 4.8  "),
              TextSpan(
                text: "(2390)",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
