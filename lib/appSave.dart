import 'package:flutter/material.dart';


class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> with SingleTickerProviderStateMixin {
  static List<String> tabNames = [
    'All Tasks',
    'Completed',
    'Not Yet'
  ];
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: tabNames.length, vsync: this);
    super.initState();
  }

  List<Task> allTasks = [Task(taskName: 'task1'), Task(taskName: 'task2'), Task(taskName: 'task3'), Task(taskName: 'task4')];
  List<Task> completedTasks = [];
  List<Task> notComletedTasks = [Task(taskName: 'task1'), Task(taskName: 'task2'), Task(taskName: 'task3'), Task(taskName: 'task4'),];

  completeTask(int i) {
    if(allTasks[i].isCompleted||notComletedTasks[i].isCompleted){
      completedTasks.add(notComletedTasks[i]);
      notComletedTasks.removeAt(i);
    }
    else{
      notComletedTasks.add(completedTasks[i]);
      completedTasks.removeAt(i);
    }

  }
  Widget createList() {
    return ListView.builder(
        itemCount: allTasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(allTasks[index].taskName),
            trailing: Checkbox(
                value: allTasks[index].isCompleted,
                onChanged: (v) {
                  allTasks[index].changeTaskCompleted();
                  completeTask(index);
                  setState(() {});
                }),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks App'),
        bottom: TabBar(unselectedLabelColor: Colors.white,labelColor: Colors.amberAccent,
          tabs: tabNames
              .map<Widget>((e) => Tab(
                    text: e,icon: e=='All Tasks'?Icon(Icons.playlist_add_check):e=='Not Yet'?Icon(Icons.remove_circle):Icon(Icons.done_all),
                  ))
              .toList(),
          controller: tabController,
        ),
      ),
      body: //createList(),
      TabBarView(children:[ListView.builder(
          itemCount: allTasks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(allTasks[index].taskName),
              trailing: Checkbox(
                  value: allTasks[index].isCompleted,
                  onChanged: (v) {
                    allTasks[index].changeTaskCompleted();
                    completeTask(index);
                    setState(() {});
                  }),
            );
          }),
        ListView.builder(
            itemCount: completedTasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(completedTasks[index].taskName),
                trailing: Checkbox(
                    value: true,
                    onChanged: (v) {
                      completedTasks[index].changeTaskCompleted();
                      completeTask(index);
                      setState(() {});
                    }),
              );
            }),
        ListView.builder(
            itemCount: notComletedTasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(notComletedTasks[index].taskName),
                trailing: Checkbox(
                    value: false,
                    onChanged: (v) {
                      notComletedTasks[index].changeTaskCompleted();
                      completeTask(index);
                      setState(() {});
                    }),
              );
            })], controller: tabController,),
      
    );
  }
}

class Task {
  String taskName;
  bool isCompleted;
  Task({this.taskName, this.isCompleted = false});
  changeTaskCompleted() {
    this.isCompleted = !this.isCompleted;
  }
}

///////////////////////////////////////// tabs ////////////////////////
class AllTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('all tasks'),
    );
  }
}

class CompletedTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  }
}

class NotcompletedTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('Not completed tasks'),
    );
  }
}
