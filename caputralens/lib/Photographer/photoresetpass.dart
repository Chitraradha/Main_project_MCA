import 'package:flutter/material.dart';

class PhotoResetPass extends StatefulWidget {
  const PhotoResetPass({super.key});

  @override
  State<PhotoResetPass> createState() => _PhotoResetPassState();
}

class _PhotoResetPassState extends State<PhotoResetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){}, ),
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
             const Text("Reset Password",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 15,),
            const Text("Your new password must be different from previous\nuser passwords",style: TextStyle(color: Colors.white54),),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
            width: 460,
            height: 570,
            child:Column(
              children: [
              const SizedBox(height: 30,),
              TextField(
                  decoration: InputDecoration(
                    labelText: "  New Password",
                    hintText: "  New Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined,size: 30,)
                  ),
                ),
                const SizedBox(height: 15,),
                Align(
                  alignment:Alignment.bottomLeft ,
                  child: const Text("Must be at least 8 characters",style: TextStyle(fontWeight: FontWeight.bold,))),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "  Confirm Password",
                    hintText: "  Confirm Password",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined,size: 30,)
                  ),
                ),
                const SizedBox(height: 15,),
                Align(
                  alignment:Alignment.bottomLeft ,
                  child: const Text("Both password must match",style: TextStyle(fontWeight: FontWeight.bold),)),
                const SizedBox(height: 120,),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white),
                onPressed: (){}, child: const Text("Reset Password")))
             ]),
          )
                ],),
        )),
    );
  }
}