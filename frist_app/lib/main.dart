import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';



void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
    Container(color:Colors.amber,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment:CrossAxisAlignment.start,
      children:[
        Center(
          //child: Image.asset("assets/images/earth.jpg"),
        )
      
      ],
    ),
    ),

    Container(color:Color.fromARGB(255, 230, 121, 20),
    ),

    Container(color:Color.fromRGBO(102, 60, 4, 1),
    ),
    
    Container(color:Color.fromARGB(255, 158, 99, 5),
    ),

    
    
  ];
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      body: LiquidSwipe(pages: pages,
      enableLoop: true,
      fullTransitionValue: 600,
      slideIconWidget: const Icon(
         Icons.arrow_back,
         color:Colors.white,),
      
      ),
      
    ),

    );
  }
}