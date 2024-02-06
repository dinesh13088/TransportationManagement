import 'package:flutter/material.dart';
import 'package:trackingapp/Pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        
       
          appBarTheme:const  AppBarTheme(
            backgroundColor: Color.fromRGBO(23, 107, 135, 1), 
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(180, 212, 255, 1),
            primary: const Color.fromRGBO(23, 107, 135, 1),
            secondary: const Color.fromRGBO(180, 212, 255, 1),
            
          ),
          textTheme: const TextTheme(
              titleMedium: TextStyle(fontSize: 15,color: Color.fromRGBO(17, 45, 78, 1)),
              titleLarge:
                  TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
      debugShowCheckedModeBanner: false,
    );
  }
}
