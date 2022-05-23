// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final pages = [
         Container(color:Color.fromARGB(255, 53, 114, 228),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Center(
            child: Image.asset("assets/images/earth2.png",width: 400.0,),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Planet", style: TextStyle(fontSize: 30,color: Colors.white), 
              ),

              Text("Earth",style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 164, 158, 167),fontWeight:FontWeight.bold),),SizedBox(height: 20.0,),
              SizedBox(height: 20.0,),  
               Divider(color: Colors.white,),
               Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
               style: TextStyle(color:Color.fromARGB(255, 255, 255, 255)),)
            ],
          ),
          ) 
      ],
    ),
    ),
    
   
      Container(color:Color.fromARGB(255, 18, 144, 194),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Center(
            child: Image.asset("assets/images/2.png",width: 400.0,),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Planet", style: TextStyle(fontSize: 30,color: Colors.white),),
               Text("Jupiter",style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 164, 158, 167),fontWeight:FontWeight.bold),),
               SizedBox(height: 20.0,),
               Divider(color: Colors.white,),
               Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255)),)
              
              
            ],
          ),
          ) 
      ],
    ),
    ),

      Container(color:Color.fromARGB(255, 3, 27, 129),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Center(
            child: Image.asset("assets/images/3.png",width: 300.0,),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Planet", style: TextStyle(fontSize: 30,color: Colors.white),),
               Text("Pluto",style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 164, 158, 167),fontWeight:FontWeight.bold),),
               SizedBox(height: 20.0,),
               Divider(color: Colors.white,),
               Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255)),)
            ],
          ),
          ) 
      ],
    ),
    ),


     Container(color:Color.fromARGB(255, 66, 67, 92),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Center(
            child: Image.asset("assets/images/4.png",width: 300.0,),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Planet", style: TextStyle(fontSize: 30,color: Colors.white),),
               Text("Saturn",style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 164, 158, 167),fontWeight:FontWeight.bold),),
               SizedBox(height: 20.0,),
               Divider(color: Colors.white,),
               Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255)),)
            ],
          ),
          ) 
      ],
    ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: LiquidSwipe(pages: pages,
      enableLoop: true,
      fullTransitionValue: 700,
      slideIconWidget: const Icon(Icons.arrow_back,color: Colors.white,),
      ),
      
    );
  }
}
