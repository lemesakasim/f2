import 'dart:ui';

import 'package:flutter/material.dart';

class Quote {
  String text;
  String author;

  Quote({required this.text, required this.author});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuoteList(),
    );
  }
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
      text: 'Be yourself: everyone else is already taken',
      author: 'Oscar Wilde',
    ),
    Quote(
      text: 'I have nothing to declare except my genius',
      author: 'Oscar Wilde',
    ),
    Quote(
      text: 'The truth is rarely pure and never simple',
      author: 'Oscar Wilde',
    ),
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
      body: ListView.builder(
        itemCount: quotes.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              title: Text(quotes[index].text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
              ),
              subtitle: Text(quotes[index].author,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 12,
                color: Colors.deepOrangeAccent,
                letterSpacing: 1.0,
               // backgroundColor: Colors.cyan,
                fontFamily: String.fromCharCode(ChannelBuffers.kDefaultBufferSize),
              ),),
            ),
          );
        },
      ),
    );
  }
}