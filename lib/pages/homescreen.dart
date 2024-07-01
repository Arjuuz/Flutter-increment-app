// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
   Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  // ignore: override_on_non_overriding_member
  int _counter=0;
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.green,child:Icon(Icons.add) ,onPressed:(){
      setState(() {
          _counter=_counter+1;
      },);
      } ,)
      ,
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(
          child: Text("Increment App",
          style: TextStyle(
            fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey[800]),
          ),
        ),
      ),
      body: Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('you have tapped this amount of time',style: TextStyle(color: Colors.black,fontSize: 15),),
            
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                
                  borderRadius: BorderRadius.circular(10)
                ),
                child:Center(child: TextValue(counterText: _counter.toString(),
                ),
                ),
                ),
              ),
            
          ],
        ),
      ),
     
    );
  }
}

class TextValue extends StatelessWidget {
  final String counterText;

  const TextValue({super.key, required this.counterText});
  @override
  Widget build(BuildContext context) {
    return Text(counterText,style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),);
  }
}