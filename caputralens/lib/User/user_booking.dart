import 'package:flutter/material.dart';

class UserBooking extends StatefulWidget {
  const UserBooking({super.key});

  @override
  State<UserBooking> createState() => _UserBookingState();
}

class _UserBookingState extends State<UserBooking> {
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
             const Text("Book Your Event",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
            width: double.infinity,
            height: 920,
            child:Column(children: [
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
                    labelText: "   Address",
                    hintText: "    Address",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "   Event Name",
                    hintText: "   Event Name",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "   Duration",
                    hintText: "   Duration",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "   Time",
                    hintText: "   Time",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "   Form Date",
                    hintText: "   From Date",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "   To Date",
                    hintText: "   To Date",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) ,
                  ),
                ),
                const SizedBox(height: 35,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "   Contact No",
                    hintText: "   Contact No",
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
                  // Navigator.push(context, MaterialPageRoute(builder: 
                  // (context)=>Photologin()
                  // ));
                }, child: const Text("Book")))
             ]),
          )
                ],),
        )),
    );
  }
}