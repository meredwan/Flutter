// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     
      
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Grid View"),backgroundColor:Color(0xFF6998AB),),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: GridView(children: [
            
            Container(
              
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF2F8F9D)),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Icon(Icons.home, size: 50, color: Colors.white,)),
                  Text("Home", style: TextStyle(fontSize: 25),)
                ],
              )   
            ),

            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF3BACB6)),  
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search, size: 50, color: Colors.white,),
                    Text("Search", style: TextStyle(fontSize: 25),)
                  ],
                ),
            ),

            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF82DBD8)),  
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, size: 50, color: Colors.white,),
                    Text("Setting", style: TextStyle(fontSize: 25),),
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF247881)), 
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.book, size: 50, color: Colors.white,),
                    Text("Books", style: TextStyle(fontSize: 25),) 
                  ],
              ),
            ),

            
          ],
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing: 8,mainAxisSpacing: 8),
          ),
        ),
      ),
    );
  }
}