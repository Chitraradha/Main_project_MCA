import 'package:flutter/material.dart';

class UserComplain extends StatefulWidget {
  const UserComplain({super.key});

  @override
  State<UserComplain> createState() => _UserComplainState();
}

class _UserComplainState extends State<UserComplain> {
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
             const Text("Complains",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
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
              Container(
                width: 380,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black54)
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Image.asset('asset/cry.png',width: 80,height: 80,),
                      SizedBox(width: 5,),
                      Text("We are very sorry for your bad experience\n.Please, spend some of your valuable time\n to write exactly what happened so that\n we can take our steps as soon as possible.",style: TextStyle(fontWeight: FontWeight.bold),)                   
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.indigo)
                ),
                child: Text("Type here.."),
              ),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "   Enter Your Name",
                    hintText: "   Enter Your Name",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "   Phone No",
                    hintText: "   Phone No",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 70,),
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