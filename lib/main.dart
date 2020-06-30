import 'package:flutter/material.dart';
import 'package:myApp/rouute.dart';


import 'Tasks/tasksToDo.dart';
import 'englishWord/randomWords.dart';
import 'englishWord/tab.dart';
import 'imgpp.dart';




void main() {

  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Maysa App',
      home:FirstRoute(),
      
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