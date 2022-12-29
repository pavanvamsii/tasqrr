// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasqrr/Screens/Loginscreen80.dart';

class createacc extends StatelessWidget {
  const createacc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: createaccount(),
    );
  }
}

class createaccount extends StatefulWidget {
  const createaccount({super.key});

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: true,
        backgroundColor: Color.fromARGB(255, 0, 22, 39),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: Center(
                  child: Text(
                    'Why do I need to Create Account?',
                    style: GoogleFonts.manrope(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                width: 250,
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('images/technology.png'),
                      width: 70,
                    ),
                    Container(
                      height: 13,
                    ),
                    Text(
                      'Access your data in other devices.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('images/structure.png'),
                      width: 100,
                    ),
                    // Container(height: 6,),
                    Text(
                      'Share tasks with your teams.',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                width: 250,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('images/cloud.png'),
                      width: 100,
                    ),
                    // Container(height: 6,),
                    Text(
                      'Store your data in a secured \nand private cloud.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 80, 0, 50),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 30,
                  child: IconButton(
                      onPressed: () {
                        // check navigation
                        // Navigator.of(context)
                        // .push(CupertinoPageRoute(builder: (c) => Screen27()));
                        Navigator.of(context).push(
                            CupertinoPageRoute(builder: (c) => loginscreen()));
                      },
                      icon: Icon(Icons.check)),
                ),
              )
            ],
          ),
        ));
  }
}
