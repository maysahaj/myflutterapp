import 'package:flutter/material.dart';


class DrawerApp extends StatelessWidget {
  final appTitle = 'CurrancyApp';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title:appTitle),
      
      
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);
  
 int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:  Scaffold(
      appBar: AppBar(title: Text(title,style: TextStyle(color: Colors.yellow,fontWeight:FontWeight.bold),)),
      
      body: Center(child: Text('My App!')),
      drawer: Drawer(
        
        child: ListView(
         
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('My App Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
                
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.teal[100],
        bottomNavigationBar: new BottomNavigationBar(
      currentIndex: index,
       
      items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text("Left"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.search),
          title: new Text("Right"),
        ),
         new BottomNavigationBarItem(
          icon: new Icon(Icons.search),
          title: new Text("kkkkkkkkkk"),
        ),
      ],
    ),
  ),
    ) ;
   
}
}