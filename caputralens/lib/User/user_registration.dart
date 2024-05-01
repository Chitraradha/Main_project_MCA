import 'dart:math';

import 'package:caputralens/User/userlogin.dart';
import 'package:caputralens/controller/controller.dart';
import 'package:flutter/material.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({super.key});

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  ControllerProvider obj1=ControllerProvider();
  TextEditingController name=TextEditingController();
  TextEditingController lastname=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController contact=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>UserLogin()));}, ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        padding: const EdgeInsets.only(left: 15,right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text("Register Yourself.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 15,),
            const Text("Complete the form below to get start",style: TextStyle(color: Colors.white54),),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
            width: double.infinity,
       
            child:Column(children: [
              Container(
                width: 440,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 201, 196, 196),
                  borderRadius: BorderRadius.circular(35)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const SizedBox(width: 40,),
                    const Text(" Login",style: TextStyle(color: Color.fromARGB(153, 86, 81, 81),fontSize: 20,fontWeight: FontWeight.bold),),
                    const SizedBox(width:40,),
                    SizedBox(
                      width: 170,
                      height: 60,
                      child: ElevatedButton(onPressed: (){}, child: const Text("Register",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),))),
                  ]),
                ),
              ),
              const SizedBox(height: 30,),
              TextField(
                controller: name,
                  decoration: InputDecoration(
                    labelText: "   Name",
                    hintText: "   Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  controller: lastname,
                  decoration: InputDecoration(
                    labelText: "   Last Name",
                    hintText: "   Last Name",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "   Email Address",
                    hintText: "   Email Address",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  controller: contact,
                  decoration: InputDecoration(
                    labelText: "   Contact No",
                    hintText: " Contact No",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                    labelText: "   Password",
                    hintText: " Password",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 50,),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white),
                onPressed: (){
                 obj1.createLogin(emailAddress: email.text, password: password.text,context: context);
                }, child: const Text("Register"))),
                SizedBox(height: 20,)
             ]),
          )
                ],),
        )),
    );
  }
}