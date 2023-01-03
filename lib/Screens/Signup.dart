// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, unused_import, unnecessary_new

// import 'dart:html';

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//google fonts
import 'package:google_fonts/google_fonts.dart';
import 'package:tasqrr/Screens/Loginscreen80.dart';
import 'package:tasqrr/Screens/signinwithemail.dart';
import 'package:tasqrr/Screens/slider.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup(),
    );
  }
}

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

FirebaseAuth _auth = FirebaseAuth.instance;

class _SignupState extends State<Signup> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmpasswordController = new TextEditingController();

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
        title: Text('Sign Up'),
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
                      Text('Name',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 19)),
                      TextFormField(
                        controller: nameController,
                        style: TextStyle(
                            color: Color.fromARGB(255, 224, 224, 224),
                            fontSize: 17,
                            letterSpacing: 0.3),
                        decoration: InputDecoration(
                            hintText: '',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 224, 224, 224),
                                fontSize: 17)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email Id',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 19)),
                      TextFormField(
                        controller: emailController,
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
                        controller: passwordController,
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
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Confirm Password',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 19)),
                      TextFormField(
                        controller: confirmpasswordController,
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
                Container(
                  width: 400,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 0, 33, 56),
                      ),
                      onPressed: () {
                        _auth
                            .createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text)
                            .then((value) {
                          // print(value);
                          Navigator.of(context).push(
                              CupertinoPageRoute(builder: (c) => signin()));
                        }).catchError((onError) {
                          print(onError);
                        });
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
