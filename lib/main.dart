// ignore_for_file: prefer_const_constructors, unused_import, duplicate_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasqrr/Screens/Signup.dart';
import 'package:tasqrr/Screens/calendar.dart';
import 'package:tasqrr/Screens/signinwithemail.dart';
import 'package:tasqrr/Screens/tasqumain.dart';

import 'Screens/tasqumain.dart';
import 'Screens/create_account.dart';
import 'Screens/Loginscreen80.dart';
import 'Screens/Signup.dart';
import 'Screens/calendar.dart';
import 'Screens/slider.dart';
import 'Screens/drawer.dart';

void main() async {
  runApp(tasqumain());
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
}