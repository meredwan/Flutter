import 'package:flutter/material.dart';

class Three extends StatefulWidget {
  const Three({ Key? key }) : super(key: key);

  @override
  State<Three> createState() => _threeState();
}

class _threeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Three",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),

    );
  }
}