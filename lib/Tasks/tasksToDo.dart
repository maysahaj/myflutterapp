
import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTODo extends StatefulWidget {
  @override
  _TaskTODoState createState() => _TaskTODoState();
}

class _TaskTODoState extends State<TaskTODo> {
  List<WordPair> allWord = [];

  List<WordPair> toSavedWord = [];

  List<WordPair> savedWord = [];

  List<Tasks> allTasks = [
    Tasks(taskTitle:'studying1'),
    Tasks(taskTitle:'studying2'),
    Tasks(taskTitle:'studying3'),
    Tasks(taskTitle:'studying4'),
    Tasks(taskTitle:'studying5'),
    Tasks(taskTitle:'studying6'),
  ];

  List<Tasks> completeTasks = [
    
  ];

  List<Tasks> notCompleteTasks = [];
  completeTask(int index){
    completeTasks.add(allTasks[index]);
    allTasks.removeAt(index);
    setState(() {
      
    });
  }
   Wedget notcompleteTask(){
       completeTasks.toSet();
       
       setState(() {
         
       });
     }
   
     bool isComplete = false;
     void _addTodoItem() {
       // Putting our code inside "setState" tells the app that our state has changed, and
       // it will automatically re-render the list
       setState(() {
         int index = allTasks.length;
         allTasks.add(allTasks[0]);
       });
    
     }
   
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(title:Text('myTasks')),
         body:ListView.builder(itemCount:allTasks.length ,itemBuilder:(context,index){
           return ListTile(title:Text(allTasks[index].taskTitle),
           trailing: Checkbox(value:allTasks[index].isComplete , onChanged: (v)
           {
             allTasks[index].changeTaskComplete();
            completeTask(index);
            print(allTasks.length);
             print(completeTasks .length);
             }
          ),);
   
         }
         ),
         floatingActionButton: new FloatingActionButton(
           onPressed: _addTodoItem,
           tooltip: 'Add task',
           child: new Icon(Icons.add),
           backgroundColor: Colors.orange,
         )
       );
     }
   }
   
   class Wedget {
}
class Tasks{
 String taskTitle;
 bool isComplete;
 Tasks({this.taskTitle,this.isComplete=false});
 changeTaskComplete(){
   this.isComplete = !this.isComplete;
   print(this.isComplete);
 }
}