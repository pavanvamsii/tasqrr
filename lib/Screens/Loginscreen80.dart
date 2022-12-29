// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasqrr/Screens/Signup.dart';
import 'package:tasqrr/Screens/signinwithemail.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginscreen(),
    );
  }
}

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 22, 39),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 165, 0, 20),
                child: Image(
                  image: AssetImage('images/1024.png'),
                  width: 100,
                ),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
                    width: 400,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.apple),
                              color: Colors.black,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
                              child: Text(
                                'Sign in with Apple',
                                style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue),
                            onPressed: () {},
                            child: Row(children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.g_mobiledata),
                                color: Colors.white,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(5, 20, 5, 20),
                                child: Text(
                                  'Google',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              )
                            ])),
                      ),
                      Container(
                        width: 5,
                      ),
                      Container(
                        width: 195,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 2, 84, 151)),
                            onPressed: () {},
                            child: Row(children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.facebook),
                                color: Colors.white,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(5, 20, 5, 20),
                                child: Text(
                                  'facebook',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              )
                            ])),
                      )
                    ],
                  ),

                  //------------
                  Container(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 280,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 0, 22, 39),
                              side: BorderSide(width: 1, color: Colors.grey)),
                          onPressed: () {
                            Navigator.of(context).push(
                                CupertinoPageRoute(builder: (c) => signin()));
                          },
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(5, 16, 5, 16),
                              child: Text(
                                'Sign in with Email',
                                style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )),
                        ),
                      ),
                      Container(
                        width: 5,
                      ),
                      Container(
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 0, 22, 39),
                              side: BorderSide(width: 1, color: Colors.grey)),
                          onPressed: () {
                            Navigator.of(context).push(
                                CupertinoPageRoute(builder: (c) => signup()));
                          },
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(5, 16, 5, 16),
                              child: Text(
                                'Sign Up',
                                style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 145, 0, 0),
                      child: Text(
                        'Why do I need to Create Account?',
                        style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 233, 232, 232)),
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 12, 0, 15),
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: 'By joining Tasqr you accept our\n',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                height: 1.7,
                                color: Colors.grey),
                            children: [
                              TextSpan(
                                  text: 'Privacy Policy',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Colors.white)),
                              TextSpan(
                                  text: ' use and',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Colors.grey)),
                              TextSpan(
                                  text: ' Terms & Conditions',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Colors.white))
                            ])),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
