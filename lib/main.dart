import 'package:flutter/material.dart';
import 'package:flutter_application_1_cloningui02/instaUiCloning.dart';



void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light,primaryColor: Colors.deepPurpleAccent),
      home: InstaCloning(),
    );
    
  }
}