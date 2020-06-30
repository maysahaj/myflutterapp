

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeyPR extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scafoldKey =  GlobalKey();
    return Scaffold(key:scafoldKey,
      body:Center(child:RaisedButton(onPressed:(){
      scafoldKey.currentState.showSnackBar(SnackBar(content:Text('mmmm'),));
      showDialog(context: context,
      builder:(context){
        return CupertinoAlertDialog(
              content: Text('alert'),
              title: Text('dialog'),
              actions: <Widget>[
                CupertinoDialogAction(child: Text('ok'),onPressed: ()=>print('ok'),),
                CupertinoDialogAction(child: Text('ok'),onPressed: ()=>print('ok'),)
              ],
        );
      });
    }),)
    );
   
  }
}
