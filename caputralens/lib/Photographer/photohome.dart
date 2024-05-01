import 'package:flutter/material.dart';

class PhotographerHome extends StatefulWidget {
  const PhotographerHome({super.key});

  @override
  State<PhotographerHome> createState() => _PhotographerHomeState();
}

class _PhotographerHomeState extends State<PhotographerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0), 
        child: Container(
          height: 100.0, 
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0), 
            ),
          ),
        child: AppBar(
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: TextFormField(
            decoration:  InputDecoration(
              suffixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.black),
            ),    
          ),
        ),
      ),
      ),
     body: Container(
      padding: const EdgeInsets.all(8),
        color: Colors.black,
        child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2)
        ),
        )
      ),
    );
  }
}