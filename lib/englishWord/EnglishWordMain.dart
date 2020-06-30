import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:myApp/englishWord/randomWords.dart';


class EnglishWordMain extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();  // Delete this line.

    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          //child: new Text(wordPair.asPascalCase), // Change this line to... 
          child: new RandomWords(),                 // ... this line.
        ),
      ),
    );
  }
}
