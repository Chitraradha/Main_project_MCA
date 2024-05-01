import 'package:caputralens/Photographer/contestpayment.dart';
import 'package:flutter/material.dart';

class ContestRegistration extends StatefulWidget {
  const ContestRegistration({super.key});

  @override
  State<ContestRegistration> createState() => _ContestRegistratiomState();
}

class _ContestRegistratiomState extends State<ContestRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){Navigator.pop(context);}, ),
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
            height: 650,
            child:Column(children: [
              const SizedBox(height: 30,),
              TextField(
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
                  decoration: InputDecoration(
                    labelText: "   Password",
                    hintText: "   Password",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "   Contact No",
                    hintText: " Contact No",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 100,),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ContestPayment()));
                }, child: const Text("Register")))
             ]),
          )
                ],),
        )),
    );
  }
}