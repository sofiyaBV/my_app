import 'package:flutter/material.dart';
import 'package:my_app/core/presentation/screens/home/presentation/home_sscreen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'About Me',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ), 
      home: const HomeScreen()
      );
  }
}