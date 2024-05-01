import 'package:caputralens/Admin/adminUserview.dart';
import 'package:caputralens/Admin/adminphotoView.dart';
import 'package:caputralens/Admin/homeinsert.dart';
import 'package:caputralens/Admin/homeview.dart';
//import 'package:caputralens/login.dart';
import 'package:caputralens/Admin/notification.dart';
import 'package:flutter/material.dart';

class AdminBottomNavigation extends StatefulWidget {
  int currentIndex;
   AdminBottomNavigation({super.key,required this.currentIndex});

  @override
  State<AdminBottomNavigation> createState() => _AdminBottomNavigationState();
}

class _AdminBottomNavigationState extends State<AdminBottomNavigation> {
  List<Widget> pages = [
    const Homeone(),
    const UserView(),
    const HomeInsert(),
    const NotificationPage(),
    const ViewPhotographer()
    
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[widget.currentIndex],
      bottomNavigationBar: bott(onTap:(p1){
        setState(() {
          widget. currentIndex=p1;
        });
      })
    );
  }
}

bott({void Function(int)? onTap}){
  return BottomNavigationBar(
        onTap: onTap,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_sharp,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.camera_enhance,color: Colors.black,),label: 'Home'),
      ]);
}