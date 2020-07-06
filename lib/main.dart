import 'package:flutter/material.dart';
import 'FormTask/formApp.dart';
import 'englishWord/EnglishWordMain.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Maysa App',
      home:EnglishWordMain(),
      
      /*Scaffold(
        appBar: AppBar(title:Text('Maysa App')
        ,
        ),
        floatingActionButton: FloatingActionButton(onPressed: null,),
        body: Center(child:Text('maysa',style: TextStyle(color: Colors.red,backgroundColor: Colors.blue),),),
        
      */        
      ); 
  
  }
}

