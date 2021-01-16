import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: Quotes(),
));

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(author: 'Deni Juli', text: 'The best thing is you'),
    Quote(author: 'Samin', text: 'You are the reason'),
    Quote(author: 'Juli', text: 'Kentaki is the best?')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Quotes'),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((item) => QuoteCard(
            quote: item,
            delete: () {
              setState(() {
                quotes.remove(item);
              });
            }
        )).toList(),
      ),
    );
  }
}
