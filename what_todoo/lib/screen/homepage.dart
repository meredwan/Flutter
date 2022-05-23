
import 'package:flutter/material.dart';
import 'package:what_todoo/widgets.dart';




class homepage extends StatefulWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xffff6f6f6),
          width: double.infinity,
          padding:EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 32.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom: 32.0,
                ),
                child: Image(
              image: AssetImage('assets/images/logo.png'),
                ),
              ),
              taskCardwidgets(),
              taskCardwidgets(),
            ],
          )
        ),
      ),
    );
  }
}