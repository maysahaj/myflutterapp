import 'package:flutter/material.dart';
import 'package:myApp/onGenrateRoute/HomeScreen.dart';

import 'ArgSec.dart';
import 'PassArg.dart';

class MainScreenArgs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       
        onGenerateRoute: (settings) {
          if (settings.name == PassArgumentsScreen.routeName) {
            final ScreenArguments args = settings.arguments;

            
            return MaterialPageRoute(
              builder: (context) {
                return PassArgumentsScreen(
                  title: args.title,
                  message: args.message,
                );
              },
            );
          }
        
          assert(false, 'Need to implement ${settings.name}');
          return null;
        },
        title: 'Navigation with Arguments',
        home: HomeScreen(),
        routes: {
          ExtractArgumentsScreen.routeName: (context) =>
              ExtractArgumentsScreen(),
        });
  }
}




class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}