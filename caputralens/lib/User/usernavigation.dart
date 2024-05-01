import 'package:caputralens/User/bookview.dart';
import 'package:caputralens/User/user_profile.dart';
import 'package:caputralens/User/userhome.dart';
import 'package:caputralens/User/usernotification.dart';
import 'package:flutter/material.dart';

class UserbottomNavigation extends StatefulWidget {
  int currentIndex;
   UserbottomNavigation({super.key,required this.currentIndex});

  @override
  State<UserbottomNavigation> createState() => _UserbottomNavigationState();
}

class _UserbottomNavigationState extends State<UserbottomNavigation> {
  List<Widget> pages = [
    UserHomePage(),
    BookingView(),
    UserNotification(),
    UserProfile()
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[ widget. currentIndex],
      bottomNavigationBar: bbbb(onTap: (p0) {
        setState(() {
        widget.  currentIndex=p0;
        });
      },)
    );
  }
}


bbbb({void Function(int)? onTap}){

  return BottomNavigationBar(
        onTap: onTap,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person_rounded,color: Colors.black,),label: 'Home'),
      ]);
}