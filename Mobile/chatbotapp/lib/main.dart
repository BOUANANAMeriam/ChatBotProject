import 'package:chatbotapp1/Home.dart';
import 'package:flutter/material.dart';

import 'package:chatbotapp1/Chatbot.dart';

void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
       primarySwatch: Colors.purple,
     ),
      initialRoute: '/home',
      routes:{
        '/home':(context) =>Home(),
        '/chatbot':(context)=>ChatBot(),

      },

    );
  }
}