// ignore_for_file: avoid_returning_null_for_void, prefer_const_constructors, camel_case_types

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
      appBar: AppBar(title: Text("Main Widget"),),
      body: GestureDetector(
        child: Hero(
          tag: 'Picture',
        child:CircleAvatar(
          
          radius: 100,
         //backgroundImage: AssetImage('assets/images/picture.jpg'),
          
          child: Column(
            children: [
             // CrossAxisAlignment:CrossAxisAlignment.end
              CircleAvatar(backgroundImage: AssetImage("assets/image/picture2.jpg"),),
            ],
          ),
        ), 
        ),
        
        
        
        onTap: (() => 
        Navigator.push(context, MaterialPageRoute(builder: ((context) => detail())
        ),
      )
        )
      )
    );
  }
}



class detail extends StatelessWidget {
  const detail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Screen"),  
      ),
      body:(
        // child: Hero(tag: "picture", child:Image.asset('assets/images/picture.jpg')),
        Container(
          child: Column(
            children: [ 
              Image.asset("assets/images/picture.jpg"),
              Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ),
      
    );
  }
}