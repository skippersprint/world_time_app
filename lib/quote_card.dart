import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote e;

  const QuoteCard({super.key, required this.e}); //ignore super.key

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            e.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            e.author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            ),
          )
        ]),
      ),
    );
  }
}