// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class uidesign extends StatelessWidget {
  const uidesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Image(image: AssetImage("assets/images/watch.png")),
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                //overflow: Overflow.visible,
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(
                        width: 5.00,
                        color: Color(0xffeceaea),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.00),
                        topRight: Radius.circular(50.00),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "CARTIER",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xff000000),
                            ),
                          ),
                          Text(
                            "A23456",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color(0xff4e4848),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "This is a new clock. Lots of facilities.\nIt's a waterproof clock. Real gold effect. Lifetime grantee. Limited Edition.",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff514d51),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$165",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Color(0xffe510d0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    child: Card(
                      elevation: 9,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Image(
                                    image: AssetImage("assets/images/plus.png"))
                              ],
                            )),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
