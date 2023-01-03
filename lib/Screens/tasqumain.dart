// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasqrr/Screens/create_account.dart';
import 'package:google_fonts/google_fonts.dart';

class tasqumain extends StatelessWidget {
  const tasqumain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tasqumain(),
    );
  }
}

class Tasqumain extends StatefulWidget {
  const Tasqumain({super.key});

  @override
  State<Tasqumain> createState() => _TasqumainState();
}

class _TasqumainState extends State<Tasqumain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 22, 39),
      body: Center(
        child: Container(
          // width: 70,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 22, 39),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (c) => createacc()));
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('images/tasqrlogo.png'),
                      width: 100,
                    ),
                    Text(
                      'tasqr',
                      style: GoogleFonts.poppins(
                          fontSize: 60, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
