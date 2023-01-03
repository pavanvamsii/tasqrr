// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'drawer2.dart';

class drawerr extends StatelessWidget {
  const drawerr({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Drawerr(),
    );
  }
}

class Drawerr extends StatefulWidget {
  const Drawerr({super.key});

  @override
  State<Drawerr> createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
        // centerTitle: true,
      ),
      drawer: drawer2(),
      body: Center(
          child: Text(
        'manalnevadra aapadhi ekkada!',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      )),
    );
  }
}
