 import 'package:flutter/material.dart';

class taskCardwidgets extends StatelessWidget {
//const taskCardwidgets({ Key? key }) : super(key: key);
   final String title;
   taskCardwidgets({this. title});

 
   @override
   Widget build(BuildContext context) {
     return Container(
       width: double.infinity,
       padding: EdgeInsets.symmetric(
         vertical: 32.0,
         horizontal: 24.0,
       ),
       margin: EdgeInsets.only(
         bottom: 20.0
       ),
       decoration: BoxDecoration(

         borderRadius: BorderRadius.circular(20.0),
         color: Colors.white,
       ),
       
       child:
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             title ?? "Get Started",
       style: TextStyle(
          fontSize: 22.0,
          fontWeight:FontWeight.bold,
          color: Color(0xff211551)
       ), 
       ),
       Padding(

         padding: const EdgeInsets.only(
           top: 10.0
         ),
         child: Text("Welcome to WHAT TODOO,simply dummy text of the printing and typesetting industry.imply dummy text of the printing and typesetting industry.",
         style: TextStyle(
           color: Color(0xff868290),
           fontSize: 16.0,
           
         ),
         ),
       )

       ],)
         
       
     );
   }
 }