import 'package:flutter/material.dart';

class MyFirstStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return MyState();
  }
}

class MyState extends State<MyFirstStateful>
    with SingleTickerProviderStateMixin {
  String content = 'hello world';
  int count = 0;
  TabController tabController;
  List<String> tabsNames = ['Home', 'Favorite', 'News'];

  @override
  void initState() {
    
    super.initState();
    tabController = TabController(length: tabsNames.length, vsync: this);
  }

  incrementCount(){
    if(count==2){
      count=0;

    }
    else{
      count++;
    }
  }

  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      title: 'my stateful',
      home: Scaffold(
        appBar: AppBar(
          title: Text('appBar'),
          bottom: TabBar(
              controller: tabController,
              tabs: tabsNames
                  .map((e) => Tab(
                        text: e,
                      ))
                  .toList()
              // [
              //   Tab(text: 'Home',icon: Icon(Icons.home),),
              //   Tab(text: 'Favourites',icon: Icon(Icons.favorite),),
              //   Tab(text: 'News',icon: Icon(Icons.new_releases),)
              // ]
              ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: tabController
          ,children: [
            HomeScreen(),
            FavouriteScreen(),
            NewsScreen()



        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            tabController.animateTo(count);
            incrementCount();
          }
           
            ,child: Text('edit')),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: Text('HomeScreen', style: TextStyle(fontSize: 50)),
    );
  }
}


class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
       alignment: Alignment.center,
      color: Colors.yellow,
      child: Text('FavouriteScreen', style: TextStyle(fontSize: 50)),
    );
  }
}


class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
       alignment: Alignment.center,
      color: Colors.red,
      child: Text('NewsScreen', style: TextStyle(fontSize: 50)),
    );
  }
}
