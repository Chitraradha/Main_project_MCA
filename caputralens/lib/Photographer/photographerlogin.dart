 import 'package:caputralens/Photographer/photoforgotpass.dart';
import 'package:caputralens/Photographer/photohome.dart';
import 'package:caputralens/Photographer/photoregistration.dart';
import 'package:flutter/material.dart';

class Photologin extends StatefulWidget {
  const Photologin({super.key});

  @override
  State<Photologin> createState() => _PhotologinState();
}

class _PhotologinState extends State<Photologin> {
  TextEditingController email= TextEditingController();
  TextEditingController pass= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        padding: const EdgeInsets.only(top: 50,left: 10,right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text("Go ahead and set up\nyour account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 15,),
            const Text("Sign in-up to enjoy the best managing experience",style: TextStyle(color: Colors.white54),),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
            width: 460,
            height: 590,
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
                    SizedBox(
                      width: 200,
                      height: 60,
                      child: ElevatedButton(onPressed: (){}, child: const Text("Login",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),))),
                      const SizedBox(width: 45,),
                      const Text("Register",style: TextStyle(color: Color.fromARGB(153, 86, 81, 81),fontSize: 20,fontWeight: FontWeight.bold),)
                  ]),
                ),
              ),
              const SizedBox(height: 30,),
              TextField(
                controller: email,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_outlined,color: Colors.green,size: 30,),
                    labelText: " Email address",
                    hintText: " Email address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  controller: pass,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock,color: Colors.green,),
                    labelText: "Password",
                    hintText: "Password",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined,size: 30,)
                  ),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.check_box_outline_blank_sharp),
                      const SizedBox(width: 10,),
                      const Text("Remember me",style: TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(width: 50,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=>const PhotoforgotPass()
                        ));
                      }, child:const Text("Forgot Password?",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)
)
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    const Text("Create a new account?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    const SizedBox(width: 5,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: 
                      (context)=>const RegisterPhoto()
                      ));
                    }, child:const Text("Register",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 16),)
)
                  ],
                ),
                const SizedBox(height: 50,),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: 
                  (context)=>PhotographerHome()
                  ));
                }, child: const Text("Login")))
             ]),
          )
                ],),
        )),
    );
  }
}