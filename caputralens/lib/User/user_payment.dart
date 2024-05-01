import 'package:flutter/material.dart';

class UserPayment extends StatefulWidget {
  const UserPayment({super.key});

  @override
  State<UserPayment> createState() => _UserPaymentState();
}

class _UserPaymentState extends State<UserPayment> {
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
        padding: const EdgeInsets.only(left: 15,right: 10,top: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text("Payment.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 35,),
            const Text("Make an advance payment",style: TextStyle(color: Colors.white54),),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
            width: double.infinity,
            height: 600,
            child:Column(children: [
              const SizedBox(height: 30,),
              TextField(
                  decoration: InputDecoration(
                    labelText: "   Enter Your UPI ID",
                    hintText: "   Enter Your UPI ID",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                width: 230,
                height: 90,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54)
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Image.asset('asset/gpay.png',width: 200,height: 200,),
                      SizedBox(width: 5,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 230,
                height: 90,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54)
                ),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Image.asset('asset/phpay.png',width: 200,height: 200,),
                      SizedBox(width: 5,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 230,
                height: 90,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54)
                ),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Row(
                    children: [
                      Image.asset('asset/paytm.webp',width: 200,height: 200,),
                      SizedBox(width: 5,),
                    ],
                  ),
                ),
              ),
                const SizedBox(height: 50,),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white),
                onPressed: (){}, child: const Text("Confirm")))
             ]),
          )
                ],),
        )),
    );
  }
}