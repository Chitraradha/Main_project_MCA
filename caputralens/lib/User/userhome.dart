import 'package:caputralens/User/drone.dart';
import 'package:caputralens/User/fineart.dart';
import 'package:caputralens/User/food.dart';
import 'package:caputralens/User/landscape.dart';
import 'package:caputralens/User/portrait.dart';
import 'package:caputralens/User/street.dart';
import 'package:caputralens/User/wildlife.dart';
import 'package:flutter/material.dart';
import 'package:caputralens/User/wedding.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>>data=[
      {"title":"Parvathi Priya","subtitle":"","Profile":"https://images.pexels.com/photos/3755918/pexels-photo-3755918.jpeg?auto=compress&cs=tinysrgb&w=600","Post":"https://images.pexels.com/photos/974999/pexels-photo-974999.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"},
      {"title":"Sivanya Nair","subtitle":"","Profile":"https://images.pexels.com/photos/3755918/pexels-photo-3755918.jpeg?auto=compress&cs=tinysrgb&w=600","Post":"https://images.pexels.com/photos/3872626/pexels-photo-3872626.jpeg?auto=compress&cs=tinysrgb&w=600"},
      {"title":"Varun","subtitle":"","Profile":"https://images.pexels.com/photos/3755918/pexels-photo-3755918.jpeg?auto=compress&cs=tinysrgb&w=600","Post":"https://images.pexels.com/photos/2859616/pexels-photo-2859616.jpeg?auto=compress&cs=tinysrgb&w=600"},
      {"title":"Arun Kumar","subtitle":"","Profile":"https://images.pexels.com/photos/3755918/pexels-photo-3755918.jpeg?auto=compress&cs=tinysrgb&w=600","Post":"https://images.pexels.com/photos/2859616/pexels-photo-2859616.jpeg?auto=compress&cs=tinysrgb&w=600"},


    ];
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
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 8, 8, 8),
            width: double.infinity,
            height:250,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Wedding()
                        ));
                      },
                      child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('asset/weeding.jpg'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 70,top: 150),
                          child: Text("Wedding Photography",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WildlifePage()
                        ));
                      },
                      child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('asset/wildlife.jpg'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 150,left: 70),
                          child: Text("Wildlife Photography",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                     InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>StreetPage()));
                      },
                       child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('asset/street.jpg'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 150,left: 70),
                          child: Text("Street Photography",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                        ),
                                           ),
                     ),
                    SizedBox(width: 10,),
                     InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodPage()));
                      },
                       child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          
                          image: DecorationImage(image: AssetImage('asset/food.jpg'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 150,left: 70),
                          child: Text("Food Photography",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                        ),
                                           ),
                     ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DronePage()));
                      },
                      child: Container(
                        height: 200,
                        width: 300,
                        //alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('asset/drone.jpg'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 70,top: 150),
                          child: Text("Drone Photography",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LandscapePage()));

                      },
                      child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('asset/landscape.jpg'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 150,left: 70),
                          child: Text("Landscape Photography",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                     InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FineArtPage()));
                      },
                       child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('asset/fineart.jpg'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 150,left: 70),
                          child: Text("Fine Art Photography",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                        ),
                                           ),
                     ),
                    SizedBox(width: 10,),
                     InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PortraitPage()));
                      },
                       child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('asset/Portrait.jpg'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 150,left: 70),
                          child: Text("Portrait Photography",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                        ),
                                           ),
                     ),
                    ],),
                  ),
               
                ],
              ),
            ),
          ), 
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder:(context,index){
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(data[index]["title"]),
                        subtitle: Text(data[index]["subtitle"]),
                        leading: CircleAvatar(
                          radius: 80,  
                          backgroundImage: NetworkImage(data[index]["Profile"]),
                        ),
                      ),
                      Image.network(data[index]["Post"],
                      width: 500,
                      height: 400,
                      fit: BoxFit.cover,
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          SizedBox(width: 15,),
                        Icon(Icons.favorite_border,),
                        SizedBox(width: 15,),
                        Icon(Icons.mode_comment_outlined,),
                        SizedBox(width: 15,),
                        Icon(Icons.near_me_outlined,),
                        SizedBox(width: 250,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(Icons.bookmark_outline_sharp,),
                        ),
                        
                        ],
                      )
                  ]),
                );
            } ),
          ),
           
        ],
      ),
    );
  }
}

