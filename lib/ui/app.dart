import 'package:flutter/material.dart';
import './screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iTranslate | Fikri Saefullah 20180801234',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
      ),
      routes: {
        '/': (context) => SplashScreen(),
      },
    );
  }
}