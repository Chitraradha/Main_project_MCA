import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class EditPhoto extends StatefulWidget {
  const EditPhoto({super.key});

  @override
  State<EditPhoto> createState() => _EditPhotoState();
}

class _EditPhotoState extends State<EditPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Edit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),),
        ),
        actions: [TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Back",style: TextStyle(color:Colors.indigo,fontSize: 20,fontWeight: FontWeight.bold),))],
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
          Container(
            width: 440,
            height: 300,
            color: Colors.white,
          ),
                SizedBox(height: 200,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("Brightness",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 3,),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:Border.all(color: Colors.white)
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.wb_sunny_outlined,color: Colors.white,size: 40,))),
                        ],
                      ),
                        SizedBox(width: 10,),
                        Column(
                        children: [
                          Text("Contrast",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 3,),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:Border.all(color: Colors.white)
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.contrast,color: Colors.white,size: 40,))),
                        ],
                      ),
                        SizedBox(width: 10,),
                        Column(
                        children: [
                          Text("Structure",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 3,),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:Border.all(color: Colors.white)
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.change_history_sharp,color: Colors.white,size: 40,))),
                        ]
                      ),
                        SizedBox(width: 10,),
                        Column(
                        children: [
                          Text("Warmth",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 3,),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:Border.all(color: Colors.white,)
                            ),
                            child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.thermometerQuarter,color: Colors.white,size: 40,))),
                        ],
                      ),
                        SizedBox(width: 10,),
                        Column(
                        children: [
                          Text("Color",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 3,),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:Border.all(color: Colors.white)
                            ),
                            child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.rainbow,color: Colors.white,size: 40,))),
                        ],
                      ),
                        SizedBox(width: 10,),
                        Column(
                        children: [
                          Text("Saturation",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 3,),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:Border.all(color: Colors.white)
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.water_drop_outlined,color: Colors.white,size: 40,))),
                        ],
                      ),
                        SizedBox(width: 10,),
                        Column(
                        children: [
                          Text("Fade",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 3,),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:Border.all(color: Colors.white)
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(MdiIcons.cloudOutline,color: Color.fromARGB(255, 251, 250, 250),size: 40,))),
                        ],
                      ),
                        SizedBox(width: 10,),
                        Column(
                        children: [
                          Text("Vignette",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 3,),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:Border.all(color: Colors.white)
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.adjust,color: Colors.white,size: 40,))),
                        ],
                      ),
                        SizedBox(width: 10,),
                        
                    ],
                  ),
                )
                ],),
        )),
    );
  }
}