import 'package:basic/pages/homescreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Increment());
}

class Increment extends StatelessWidget {
  const Increment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homescreen(),
    );
  }
}