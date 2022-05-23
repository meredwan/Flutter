// ignore_for_file: prefer_const_constructors

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
      theme: ThemeData(
        
      ),
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
      appBar: AppBar(
        title: Center(child: Text('Apple juice', style: TextStyle(fontSize: 22),)),
        backgroundColor: Color(0xFF83BD75),
      ),
    //colse body part.........................


    body: Container(
      child: Column(
        children: [
          GestureDetector(
            child: Hero(tag: "apple",
             child:Center(
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: CircleAvatar(
                   radius: 180,
                   backgroundColor: Color(0xffFFFFFF),
                   backgroundImage: AssetImage("assets/images/apple.png"),
                 ),
               ),
             ),
            ),
      
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => Detailjuice())));
      },
          )
        ],
      ),
    ),
    );
  }
}

class Detailjuice extends StatefulWidget {
  const Detailjuice({ Key? key }) : super(key: key);

  @override
  State<Detailjuice> createState() => _DetailjuiceState();
}

class _DetailjuiceState extends State<Detailjuice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF83BD75),
        title: Center(child: Text("Details Apple Juice")),
      ), 

      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
           // height: 400,
           
            color: Color(0xFFB4E197),
            
          child: Column(
            children: [Column(children: [Positioned(child: Image.asset("assets/images/apple.png"),),
            SizedBox(
              height: 50,
            ),
            Container(
              
              child: Row(
                children: [
                  
                ],
              ),
            )
            ]
            )
            
            ],
            
          ),
          
          
          
        ),
        
        
      ),
      
    );
  
  }
}