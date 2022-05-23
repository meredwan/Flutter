import 'package:flutter/material.dart';
class Two extends StatefulWidget {
  const Two({ Key? key }) : super(key: key);

  @override
  State<Two> createState() => _twoState();
}

class _twoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Text("Two",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
    );
  }
}