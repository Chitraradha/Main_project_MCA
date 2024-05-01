import 'package:flutter/material.dart';

class PhotoNotification extends StatefulWidget {
  const PhotoNotification({super.key});

  @override
  State<PhotoNotification> createState() => _PhotoNotificationState();
}

class _PhotoNotificationState extends State<PhotoNotification> {
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
              Text("Notification",style: TextStyle(color: Colors.white,fontSize:25),)
            ],),
        )),
    );
  }
}