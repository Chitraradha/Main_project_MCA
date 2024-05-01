import 'package:flutter/material.dart';

class ViewPhotographer extends StatelessWidget {
  const ViewPhotographer({super.key});

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
              Text("View Photographers",style: TextStyle(color: Colors.white,fontSize:25),)
            ],),
        )),
    );
  }
}