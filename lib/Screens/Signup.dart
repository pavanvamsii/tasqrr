// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

// import 'dart:html';

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//google fonts
import 'package:google_fonts/google_fonts.dart';
import 'package:tasqrr/Screens/Loginscreen80.dart';
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

class _SignupState extends State<Signup> {
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
//==============================================================================
// import 'package:flutter/material.dart';

// class signup extends StatelessWidget {
//   const signup({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryTextTheme: Typography(platform: TargetPlatform.android).white,
//         textTheme: Typography(platform: TargetPlatform.android).white,
//         scaffoldBackgroundColor: Color.fromRGBO(27, 35, 53, 1),
//       ),
//       home: SignUp(),
//     );
//   }
// }

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(),
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.arrow_back_ios),
//                     color: Colors.white,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
//                     child: Text(
//                       'Sign Up',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                   ),
//                 ],
//               ),
//               Form(
//                   child: Padding(
//                 padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Name'),
//                     TextFormField(
//                       style: TextStyle(color: Color.fromRGBO(184, 196, 224, 1)),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: Text('Email Id'),
//                     ),
//                     TextFormField(
//                       style: TextStyle(color: Color.fromRGBO(184, 196, 224, 1)),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: Text('Password'),
//                     ),
//                     TextFormField(
//                       obscureText: true,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: Text('Confirm Password'),
//                     ),
//                     TextFormField(
//                       obscureText: true,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 50),
//                       child: Container(
//                         height: 100,
//                         width: 370,
//                         child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                                 backgroundColor: Color.fromRGBO(49, 59, 80, 1)),
//                             onPressed: () {},
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding:
//                                       const EdgeInsets.fromLTRB(130, 45, 0, 0),
//                                   child: Row(
//                                     children: [
//                                       Center(
//                                           child: Text(
//                                         'SUBMIT',
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             fontWeight: FontWeight.bold),
//                                       )),
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(left: 10),
//                                         child: Icon(
//                                           Icons.arrow_forward_ios,
//                                           size: 15,
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             )),
//                       ),
//                     ),
//                   ],
//                 ),
//               ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
