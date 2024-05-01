import 'package:flutter/material.dart';

class PhotoBooking extends StatefulWidget {
  const PhotoBooking({super.key});

  @override
  State<PhotoBooking> createState() => _PhotoBookingState();
}

class _PhotoBookingState extends State<PhotoBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){}, ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Booking",style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold),)
            ],),
        )),
    );
  }
}