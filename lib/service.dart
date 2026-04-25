import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:registration_app/home.dart';

Future<void> signup(
  String uname,
  String Email,
  String password,
  String confirmpassword,
  BuildContext context,
) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: Email, password: password);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Signup Successfull")));
 
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> login(String Email, String password, BuildContext context) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: Email, password: password); Navigator.push(context, MaterialPageRoute(builder: (context) => Homes()));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Login Successfully')));
  }
}

Future<void> forgot(String Email, BuildContext context) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: Email);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("pass reset email sent")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
