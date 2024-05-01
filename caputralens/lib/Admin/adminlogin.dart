import 'package:caputralens/Admin/homeview.dart';
import 'package:caputralens/controller/admincontrol.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
  AdminController obj1=AdminController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        width: double.infinity,
        color: Colors.black,
        padding: const EdgeInsets.only(top: 50, left: 20, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Go a head and set up\nyour account",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Sign in-up to enjoy the best managing experience",
            style: TextStyle(color: Colors.white54),
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            width: 460,
            height: 530,
            child: Column(
              children: [
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.green,
                      ),
                      labelText: "Email address",
                      hintText: "Email address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 35,
                ),
                TextField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.green,
                      ),
                      labelText: "Password",
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined)),
                ),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white),
                        onPressed: ()async {
                          print(email.text);
                          print(pass.text);
                        if(email.text=="capturaadmin123@gmail.com"){
                         await  obj1.login(emailAddress: email.text, password: pass.text,context:context);
                          print("Login");
                        }
                        else{
                          print("Your are not an admin");
                        }
                       
                        },
                        child: const Text("Login")))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
