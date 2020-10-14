import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_a/screens/User/user_Home_Page.dart';
import 'package:project_a/screens/User/user_Setting.dart';
import 'package:project_a/screens/login_screen.dart';
import 'package:project_a/screens/tesstcer.dart';
import 'package:provider/provider.dart';
import 'package:project_a/repo/User_Repository.dart';

class providerWithFirebaseAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer( builder: (context, userRepository userRepo, child) {
      switch (userRepo.durum)
      {
        case userDurum.idle:
          return loginScreen();
        case userDurum.oturumAciliyor:
        case userDurum.oturumAcilmamis:
          return loginScreen();
        case userDurum.oturumAcik:
          return userHome();
      }
    });
  }
}

