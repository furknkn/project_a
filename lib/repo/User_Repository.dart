import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

enum userDurum { idle, oturumAcilmamis, oturumAciliyor, oturumAcik }

class userRepository with ChangeNotifier {
  FirebaseAuth _auth;
  User _user;
  userDurum _durum = userDurum.idle;

  userRepository() {
    _auth = FirebaseAuth.instance;
    _auth.authStateChanges().listen((User user){
      if(user == Null) {
       _durum=userDurum.oturumAcilmamis;
      } else {
        _user=user;
        _durum=userDurum.oturumAcik;
      }
      notifyListeners();
    });
  }

  User get user => _user;

  set user(User value) {
    _user = value;
  }

  userDurum get durum => _durum;

  set durum(userDurum value) {
    _durum = value;
  }

  Future<bool> signIn(String email, String sifre) async {
    try {
      _durum = userDurum.oturumAciliyor;
      notifyListeners();
      await _auth.signInWithEmailAndPassword(email: email, password: sifre);
      return true;
    } catch (e) {
      _durum = userDurum.oturumAcilmamis;
      notifyListeners();
      return false;
    }
  }

  Future<bool> singOut() async {
    await _auth.signOut();
    _durum = userDurum.oturumAcilmamis;
    notifyListeners();
    return Future.delayed(Duration.zero);
  }

  Future<bool> singUp(String email, String password) async {
    try {
      _durum=userDurum.oturumAciliyor;
      notifyListeners();
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      _durum=userDurum.oturumAcik;
      notifyListeners();
      return true;
    }catch(e){
      _durum=userDurum.oturumAcilmamis;
    notifyListeners();
    return false;}
  }
 /* Future<void> _authStateChanges(User user) async {
    if (user == Null) {
      _durum = userDurum.oturumAcilmamis;
    } else {
      _user=user;
      _durum = userDurum.oturumAcik;
    }
    notifyListeners();
  }*/
}
