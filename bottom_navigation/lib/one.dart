
import 'package:flutter/material.dart';
class One extends StatefulWidget {
  const One({ Key? key }) : super(key: key);

  @override
  State<One> createState() => _oneState();
}

class _oneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("One",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      )
    );
  }
}