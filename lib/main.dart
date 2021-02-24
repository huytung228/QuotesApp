import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}
class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Le', text: 'Life is like riding a bicycle. To keep your balance, you must keep moving.'),
    Quote(author: 'Huy', text: 'May the Force be with you.'),
    Quote(author: 'Tung', text: 'No one can make you feel inferior without your consent.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(quote: quote,
        delete: () {
          setState(() {
            quotes.remove(quote);
          });
        },)).toList(),
      ),
    );
  }
}





