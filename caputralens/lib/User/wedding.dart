import 'package:caputralens/User/user_booking.dart';
import 'package:caputralens/User/usernavigation.dart';
import 'package:flutter/material.dart';

class Wedding extends StatefulWidget {
  const Wedding({super.key});

  @override
  State<Wedding> createState() => _WeddingState();
}

class _WeddingState extends State<Wedding> {
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>>data=[
      {"title":"BabuRaj","Profile":"https://images.pexels.com/photos/1767434/pexels-photo-1767434.jpeg?auto=compress&cs=tinysrgb&w=600","phnnumber":"6238440287","location":"Palakkad"}
    ];

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
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: TextFormField(
            decoration:  InputDecoration(
              suffixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: "Search",
              hintStyle: const TextStyle(color: Colors.black),
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
                        image: const DecorationImage(image: AssetImage('asset/weeding.jpg'),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20,top: 180),
                        child: Text("Where Every Click Tells a Tale of Forever: Your Love, Our Lens, Timeless Memories.",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                      ),
                    ),
                    Expanded(child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context,index){
                      return Card(
                        color: Colors.black,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white, 
                                width: 2.0, 
                                  ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black, 
                        ),
                          child: Row(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                width: 100,
                                height: 200,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: NetworkImage(data[index]["Profile"])
                                  )
                                ),
                              ),
                            ),
                            Expanded(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              ListTile(
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(data[index]["title"],style: const TextStyle(color: Colors.white),),
                                    Row(children: [const Icon(Icons.phone,color: Colors.white,),const SizedBox(width: 10,),Text(data[index]["phnnumber"],style: const TextStyle(color: Colors.white),)],),
                                    const SizedBox(height: 10,),
                                    Row(children: [const Icon(Icons.location_on_rounded,color: Colors.white,),const SizedBox(width: 10,),Text(data[index]["location"],style: const TextStyle(color: Colors.white),)],),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        ElevatedButton(onPressed: (){}, child: const Text("View Work")),
                                        const SizedBox(width: 20,),
                                        ElevatedButton(onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const UserBooking()));
                                        }, child: const Text("Booking"))
                                      ],
                                    ),
                                  ],)
                                  )
                            ],))
                          ],),
                        ),
                      );
                    }))
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