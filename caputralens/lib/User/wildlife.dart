import 'package:flutter/material.dart';
import 'package:caputralens/User/usernavigation.dart';


class WildlifePage extends StatefulWidget {
  const WildlifePage({super.key});

  @override
  State<WildlifePage> createState() => _WildlifePageState();
}

class _WildlifePageState extends State<WildlifePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0), 
        child: Container(
          height: 120.0, 
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0), 
            ),
          ),
        child: AppBar(
          leadingWidth: 20,
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
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
        width: double.infinity,
        color: Colors.black,
        child: Column(children: [
           Container(
                      height: 250,
                      width: 420,
                      //alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('asset/wildlife.jpg'),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,top: 180),
                        child: Text("Through the Lens of the Wild: Nature's Poetry Captured in Every Frame",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                      ),
                    ),
        ]),
       ),
       bottomNavigationBar: bbbb(onTap: (index) {
        if(index==0){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>UserbottomNavigation(currentIndex: 0,)));
        }else if(index==1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UserbottomNavigation(currentIndex: 1,)));
        }else if(index==2){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>UserbottomNavigation(currentIndex: 2,)));
        }else if(index==3){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>UserbottomNavigation(currentIndex: 3,)));
        }
         
       },),
    );
  }
}