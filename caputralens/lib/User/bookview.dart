import 'package:caputralens/User/user_payment.dart';
import 'package:flutter/material.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  List<Map<String,dynamic>>data=[
      {"title":"BabuRaj","Profile":"https://images.pexels.com/photos/1767434/pexels-photo-1767434.jpeg?auto=compress&cs=tinysrgb&w=600","phnnumber":"6238440287","location":"Palakkad"}
    ];
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
       backgroundColor: Colors.black,
       body:Expanded(child: ListView.builder(
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
                                        TextButton(onPressed: (){}, child: Text("Booking Accepted",style: TextStyle(color: Colors.green,fontSize: 15),)),
                                        const SizedBox(width: 20,),
                                        SizedBox(
                                          width: 100,
                                          height: 30,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue,foregroundColor: Colors.white),
                                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>UserPayment()));}, child: const Text("Pay")))
                                      ],
                                    ),
                                  ],)
                                  )
                            ],))
                          ],),
                        ),
                      );
                    })),
    );
  }
}