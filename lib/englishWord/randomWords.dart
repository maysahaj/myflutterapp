// Create an infinite scrolling lazily loaded list

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final List<WordPair> suggestions = <WordPair>[];
  final TextStyle biggerFont = const TextStyle(fontSize: 18.0);

  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
       
        title:Text('EnglishWord'),
      ),
      body: _buildSuggestions(),
     
    
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemBuilder: (BuildContext _context, int i) {
          if (i.isOdd) {
            return Divider();
          }
          final int index = i ~/ 2;
          if (index >= suggestions.length) {
            suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(suggestions[index]);
        });
  }
  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: biggerFont,
      ),
    );
  }
}