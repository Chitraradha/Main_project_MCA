import 'package:caputralens/User/user_registration.dart';
import 'package:flutter/material.dart';

class UserForgotPassword extends StatefulWidget {
  const UserForgotPassword({super.key});

  @override
  State<UserForgotPassword> createState() => _UserForgotPasswordState();
}

class _UserForgotPasswordState extends State<UserForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){
          Navigator.pop(context);
        }, ),

      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text("Forgot Password ?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 15,),
            const Text("Enter your email below to receive a password reset link",style: TextStyle(color: Colors.white54),),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
            width: 460,
            height: 570,
            child:Column(children: [
              const SizedBox(height: 30,),
              TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_outlined,color: Colors.green,size: 30,),
                    labelText: " Email address",
                    hintText: " Email address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                 Row(
                  children: [
                    Text("Don't have an account? ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(width: 5,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                      (context)=>UserRegistration()
                      ));
                    }, child: Text("Register",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 16),)
                    )
                  ],
                ),
                const SizedBox(height: 220,),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white),
                onPressed: (){}, child: const Text("Send")))
             ]),
          )
                ],),
        )),
    );
  }
}