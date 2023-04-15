import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> Register(
      {required String email,
      required String password,
      required String confirmpassword}) async {
    String res = " success";

    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          confirmpassword.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        res = "success";
        print(cred.user!.uid);
      }
    } catch (e) {
      print(e.toString());
    }
    return res;
  }
}
