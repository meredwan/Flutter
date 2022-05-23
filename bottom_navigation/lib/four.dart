// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Four extends StatefulWidget {
  const Four({ Key? key }) : super(key: key);

  @override
  State<Four> createState() => _fourState();
}

class _fourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Four", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),
    );
  }
}