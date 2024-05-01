import 'package:caputralens/Photographer/Photobooking.dart';
import 'package:caputralens/Photographer/photoPost.dart';
import 'package:caputralens/Photographer/photohome.dart';
import 'package:caputralens/Photographer/photonotification.dart';
import 'package:caputralens/Photographer/profilephotogra.dart';
import 'package:flutter/material.dart';

class PhotographerbottomNavi extends StatefulWidget {
  const PhotographerbottomNavi({super.key});

  @override
  State<PhotographerbottomNavi> createState() => _PhotographerbottomNaviState();
}

class _PhotographerbottomNaviState extends State<PhotographerbottomNavi> {
  List<Widget> pages = [
    const PhotographerHome(),
    const PhotoBooking(),
    const PostPhoto(),
    const PhotoNotification(),
    const PhotographerProfile(),

  ];

  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.panorama_fish_eye,color: Colors.black,),label: 'Home'),
      ]),
    );
  }
}