import 'package:flutter/material.dart';

class ChangePasswordPhoto extends StatefulWidget {
  const ChangePasswordPhoto({super.key});

  @override
  State<ChangePasswordPhoto> createState() => _ChangePasswordPhotoState();
}

class _ChangePasswordPhotoState extends State<ChangePasswordPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){
          Navigator.pop(context);
        }, ),
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
             const Text("Change Password",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 20,),           
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
            width: double.infinity,
            height: 690,
            child:Column(children: [
              const SizedBox(height: 10,),
              TextField(
                  decoration: InputDecoration(
                    labelText: "   Old Password",
                    hintText: "   Old Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded,size: 30,)
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "   New Password",
                    hintText: "   New Password",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                    suffixIcon: Icon(Icons.remove_red_eye_rounded,size: 30,)
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "   Confirm Password",
                    hintText: "   Confirm Password",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                    suffixIcon: Icon(Icons.remove_red_eye_rounded,size: 30,)
                  ),
                ),
                const SizedBox(height: 220,),
              SizedBox(
                width: 340,
                height: 50,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white),
                onPressed: (){}, child: const Text("Submit")))
             ]),
          )
                ],),
        )),
    );
  }
}