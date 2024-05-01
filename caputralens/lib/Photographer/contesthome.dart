import 'package:caputralens/Photographer/contestregistration.dart';
import 'package:flutter/material.dart';

class ContestHomePage extends StatefulWidget {
  const ContestHomePage({super.key});

  @override
  State<ContestHomePage> createState() => _ContestHomePageState();
}

class _ContestHomePageState extends State<ContestHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("asset/photocon.png"),
            const SizedBox(height: 10,),
            Column(
              children: [
                Container(
                  width: 500,
                  height: 350,
                  color: Colors.black,
                  child: const Text('MonoVisions Photography Awards are an international open call for photographers using black and white medium to express their visual language.\n\nOur aim is to discover the best monochrome photographers from all over the world and deliver the best opportunities to be recognized and rewarded for their work. You can compete for 5000 in cash prizes in two categories: Black and White Photo of the Year 2024 and Black and White Series of the Year 2024.\n\nYour work can be submitted in 2 sections: SINGLE photo or SERIES of photos. A series consists of maximum 8 photos, sharing the same idea and concept.\n\nOur categories: Abstract, Architecture, Conceptual, Fine Art, Landscapes, Nature and Wildlife, Nude, People, Photojournalism, Portrait, Street Photography and Travel.',style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height: 10,),
                 Container(
                  width: 500,
                  height: 500,
                  color: Colors.white70,
                  child: const Text("Fees: Paid\n\n Prizes: Grand Prize winners will receive the following:   - 3,000 cash prize for Black and White Series  of the Year. - 2,000 cash prize for Black and White Photo of the Year. - Individual certificate. -Digital statue. - Press coverage by our media partners.\n\nEligibility:Our annual competition is open to photographers of all backgrounds and all levels, including - professionals and amateurs. We accept all forms of black and white photography created with traditional or digital methods.\n\nCopyrights & Usage Rights:Copyright of the images will remain at all times with the photographer.\n\nTheme:Abstract Architecture Black and White Cityscapes Conceptual Documentary Fashion Fine Art Landscape Macro/Micro Multi-categories Nature Nudes Open Theme Panoramic People Portrait Photomanipulation Photojournalism Seascapes Street Travel Wildlife",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ContestRegistration()));
            }, child: const Text('Register Now',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
          ],),
        ),
      )),
    );
  }
}