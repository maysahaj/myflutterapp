
import 'package:flutter/material.dart';

class Tabb  extends StatefulWidget {


  @override
State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<Tabb>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home),text:'Home',),
                Tab(icon: Icon(Icons.favorite),text:'Favorite'),
                Tab(icon: Icon(Icons.settings),text:'Settings'),
              ],
            ),
            title: Text('Tabs Sections' ,style: TextStyle(color:Colors.white )),backgroundColor: Colors.purple,
          ),
          floatingActionButton:FloatingActionButton(onPressed: (){},
             child: Icon(Icons.message),
        backgroundColor:Colors.purple,),
          body: TabBarView(
            children: [

              Tab(icon: Icon(Icons.home),text:'Home Page'),
               Tab(icon: Icon(Icons.favorite),text:'Favorite Page'),
                Tab(icon: Icon(Icons.settings),text:'Settings Page'),
            ],
          ),
          
        ),
      ),
    );
  }
}