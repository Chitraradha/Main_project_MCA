import 'package:caputralens/User/userlogin.dart';
import 'package:caputralens/User/usernavigation.dart';
import 'package:caputralens/firebase_options.dart';
import 'package:caputralens/intro.dart';
import 'package:caputralens/loginbutton.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginButtonPage(),
    );
  }
}