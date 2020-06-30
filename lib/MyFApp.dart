
import 'package:flutter/material.dart';

class  MyFApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
      title: 'AppImg',
      home:Scaffold(
        appBar: AppBar(title:Text('AppMaysa',style:TextStyle(fontWeight:FontWeight.w400,fontSize:20,),),backgroundColor: Colors.pink,),
        body:Center(child:Text('Press the button below!' ,style:TextStyle(fontSize:20,color:Colors.pink,fontWeight:FontWeight.w500))),
        floatingActionButton: FloatingActionButton(onPressed: (){
          
          
        },
        child: Icon(Icons.message),
        backgroundColor:Colors.pink,
        
        
      ))

    );
  }
}