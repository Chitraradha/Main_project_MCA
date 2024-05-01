import 'dart:async';

import 'package:caputralens/Admin/bottom_navigation.dart';
import 'package:caputralens/Admin/homeview.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:caputralens/model/adminmodel.dart';
class AdminController{
final db=FirebaseFirestore.instance;

  login({required String emailAddress,required String password,context}) async {
  try {
 
await  FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailAddress,
    password: password
  ).then((value)  {
    print(emailAddress);
    print(password);
    
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>AdminBottomNavigation(currentIndex: 0,)), (route) => false);});
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
}

Future addEventData(AdminModel obj,context)async{
  final doc = db.collection("Upload Event").doc();
  doc.set(obj.tojson(doc.id)).then((value) {Navigator.push(context, MaterialPageRoute(builder: (context)=>Homeone()));});
  
}
Future<AdminModel?>readRegisteredSingleEventData()async{
 final snapshot=await db.collection("Upload Event").doc("nN942T0MbTNEDTpLFM7p").get();
  if(snapshot.exists){
    return AdminModel.fromjson(snapshot.data()!);
  }
}
List<AdminModel > list=[];
Future <List<AdminModel>> fetchAllEvents()async{

QuerySnapshot<Map<String, dynamic>> snapshot= await db.collection("Upload Event").get();

list= snapshot.docs.map((singleSnapshot){
  return  AdminModel.fromjson(singleSnapshot.data());
} ).toList();
return list;
}

}