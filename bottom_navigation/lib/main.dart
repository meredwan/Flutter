// ignore_for_file: prefer_const_constructors


import 'package:bottom_navigation/four.dart';
import 'package:bottom_navigation/three.dart';
import 'package:bottom_navigation/two.dart';
import 'package:flutter/material.dart';
import 'one.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  var _currentindex = 0;
  final pages=[
    One(),
    Two(),
    Three(),
    Four(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        
        currentIndex: _currentindex,
        selectedItemColor: Color(0xff112B3C),
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        
        
        

        
        
        // ignore: prefer_const_literals_to_create_immutables
        items: [
        
        BottomNavigationBarItem(

          //backgroundColor: Colors.grey,
        icon: Icon(Icons.apps),
        label: ("Home")
        ),

         BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: ("Favorite")
        ),

         BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: ("Search")
        ),

         BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: ("My Profile")
        ),  
      ],
          onTap: (index){
            setState(() {
              _currentindex=index;
            });
          },
      ),


      body: pages[_currentindex]
    );
  }
} 