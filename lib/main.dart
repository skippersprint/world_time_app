import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Casey Niestat', text: 'DO MORE'),
    Quote(text: 'Only the individual transcends', author: 'Naval'),
    Quote(author: 'Rancho', text: 'All is well')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 187, 187, 187),
        appBar: AppBar(
          title: const Text('Motivational Quotes 🚀'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        ),
        body: Center(
          child: Column(
            children: quotes
                .map((x) => QuoteCard(
                    e: x,
                    delete: () {
                      setState(() {
                        quotes.remove(x);
                      });
                    }))
                .toList(),
          ),
        ));
  }
}
