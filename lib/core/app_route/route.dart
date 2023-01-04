

import 'package:flutter/material.dart';
import 'package:tents/features/dashboard/HomeTab/presentation/screens/home_screen.dart';

class AppRouter{
  static Route onGenerated(RouteSettings settings) {
    switch (settings.name) {
       case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
        
       
      default:
        return onError();
    }
  }
  static Route onError() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body: Center(
                child: Text(
                  "Error Screen",
                  style: Theme.of(_).textTheme.headline1,
                ),
              ),
            ));
  }


}

