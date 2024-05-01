import 'package:caputralens/User/user_changepassword.dart';
import 'package:caputralens/User/user_complain.dart';
import 'package:caputralens/User/user_help.dart';
import 'package:caputralens/User/userabout.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Container(
          color: Colors.white,
          width: 430,
          height: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 60,),
              SizedBox(height: 20,),
              Text("UserName")
            ],
          ),
        ),
        SizedBox(height: 20,),
        TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>UserAboutUs()));}, child: Text("About Us",style: TextStyle(color: Colors.white),)),
        SizedBox(height: 10,),
        TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>UserHelp()));}, child: Text("Help",style: TextStyle(color: Colors.white),)),
        SizedBox(height: 10,),
        TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>UserchangePassword()));}, child: Text("Change Password",style: TextStyle(color: Colors.white),)),
        SizedBox(height: 10,),
       TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>UserComplain()));}, child: Text("Complains",style: TextStyle(color: Colors.white),)),
        SizedBox(height: 100,),
        ElevatedButton(
              onPressed: (){}, 
              child: Row(
                mainAxisSize: MainAxisSize.min, 
                children: [
                  Icon(Icons.power_settings_new_rounded,color: Colors.black,), 
                  SizedBox(width: 8), 
                  Text("Log Out",style: TextStyle(color: Colors.black),), 
                ],
              )
            )
      ]),),
    );
  }
}