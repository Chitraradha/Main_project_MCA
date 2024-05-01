import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Text("About Us",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 27),),
            SizedBox(height: 10,),
            Text("Introducing CaptureLens, the must-have mobile app for event organizers and photographers alike. Easily find and book photographers for your special occasions, from weddings to corporate events. Browse through a diverse directory of talented photographers, view their portfolios, and choose based on your preferences. Host your event within the app, creating a dedicated space for photographers to showcase their work. Receive real-time updates on your booking status and communicate directly with your chosen photographer. After the event, enjoy a centralized gallery of all the captured moments. Leave feedback and ratings, building a trustworthy community. With CaptureLens, simplify the process of finding, booking, and managing photographers for your events. Download now and capture your moments effortlessly!",style: TextStyle(color: Colors.white,fontSize: 18),)
          ]),
        ),
      ),
    );
  }
}