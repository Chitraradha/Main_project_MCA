import 'package:caputralens/Photographer/ohoto_bottomnavi.dart';
import 'package:caputralens/Photographer/photographerlogin.dart';
import 'package:caputralens/Photographer/photohome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PhotographerController{
  get emailAddress => null;
  
  get password => null;


createLogin({required String emailAddress,required String password,context}) async {
  try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailAddress,
    password: password,
  ).then((value) {Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Photologin()), (route) => false);});
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
}

login({required String emailAddress,required String password,context}) async {
  try {
 
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailAddress,
    password: password
  ).then((value)  {Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>PhotographerbottomNavi()), (route) => false);});
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
}

}