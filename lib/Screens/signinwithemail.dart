// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

// import 'dart:html';

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//google fonts
import 'package:google_fonts/google_fonts.dart';
import 'package:tasqrr/Screens/Forgotpassword.dart';
import 'package:tasqrr/Screens/Loginscreen80.dart';
import 'package:tasqrr/Screens/slider.dart';

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signin(),
    );
  }
}

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SignupState();
}

class _SignupState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 22, 39),
        leading: IconButton(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            onPressed: () {
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (c) => LoginScreen()));
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text('Sign in'),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 0, 22, 39),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.fromLTRB(18, 30, 18, 0),
            child: Form(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email Id',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 19)),
                      TextFormField(
                        style: TextStyle(
                            color: Color.fromARGB(255, 224, 224, 224),
                            fontSize: 17,
                            letterSpacing: 0.3),
                        decoration: InputDecoration(
                          hintText: '',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 224, 224, 224),
                              fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Password',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 19)),
                      TextFormField(
                        obscureText: true,
                        style: TextStyle(
                            color: Color.fromARGB(255, 224, 224, 224),
                            fontSize: 17,
                            letterSpacing: 1),
                        decoration: InputDecoration(
                            hintText: '',
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (c) => Forgotpassword()));
                        },
                        child: Text('Forgot Password?',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 13)),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 400,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 0, 33, 56),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(CupertinoPageRoute(builder: (c) => slider()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SUBMIT',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 13,
                          )
                        ],
                      )),
                )
              ],
            ))),
      ),
    );
  }
}
