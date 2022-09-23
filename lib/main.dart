import 'package:flutter/material.dart';
import 'quote.dart';

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
    Quote(text: 'Only the individual transcends', author: 'Naval')
  ];

  Widget quoteTemplate(e) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(
            e.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 6.0,),
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
            children:
                quotes.map((e) => quoteTemplate(e)).toList(),
          ),
        ));
  }
}
