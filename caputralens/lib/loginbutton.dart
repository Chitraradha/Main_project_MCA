import 'package:caputralens/Admin/adminlogin.dart';
import 'package:caputralens/Photographer/photographerlogin.dart';
import 'package:caputralens/User/userlogin.dart';
import 'package:flutter/material.dart';

class LoginButtonPage extends StatefulWidget {
  const LoginButtonPage({super.key});

  @override
  State<LoginButtonPage> createState() => _LoginButtonPageState();
}

class _LoginButtonPageState extends State<LoginButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text("Admin",style: TextStyle(fontWeight: FontWeight.bold),),
          IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));}, icon: Icon(Icons.admin_panel_settings))],
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.asset("asset/photocap.png",height: 250,width: 250,),
              SizedBox(height: 70,),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
                      side: BorderSide(color: Colors.white)),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>UserLogin()));}, child: Text("User Login",style: TextStyle(fontSize: 16),))),
            SizedBox(height: 40,),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
                side: BorderSide(color: Colors.white)),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Photologin()));}, child: Text("Photographer Login",style: TextStyle(fontSize: 16),)))
            ],
          ),
        ),
      ),
    );
  }
}