import 'package:flutter/material.dart';
import 'package:tents/core/configs/configs.dart';

import 'core/app_route/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kCompanyName,
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.system,
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().lightTheme,
      home: Container(),
      onGenerateRoute: AppRouter.onGenerated,
      builder: (context, widget){
        final media = MediaQuery.of(context);
        Dims.setSize(media);
        return widget!;
      },
    );
  }
}

