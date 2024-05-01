import 'package:caputralens/Photographer/editphoto.dart';
import 'package:flutter/material.dart';
class PostPhoto extends StatefulWidget {
  const PostPhoto({super.key});

  @override
  State<PostPhoto> createState() => _PostPhotoState();
}

class _PostPhotoState extends State<PostPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.close,color: Colors.white,size: 30,),onPressed: (){}, ),
        title: Text("New Post",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        actions: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: 
            (context)=>EditPhoto(),
            ));
          }, child: Text("Edit",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 20),)),
          TextButton(onPressed: (){}, child: Text("Next",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 20),)),
          SizedBox(width: 1,),
        ],
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 440,
              height: 300,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text("Recent",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              IconButton(icon:Icon(Icons.keyboard_arrow_down),color: Colors.white,onPressed: (){},),
              SizedBox(width: 225,),
              IconButton(icon:Icon(Icons.file_copy_outlined),color: Colors.white,onPressed: (){},),
              IconButton(icon:Icon(Icons.camera_alt_sharp),color: Colors.white,onPressed: (){},),
              ],),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),itemBuilder:(context, index){
              return Container(color: Colors.red,height: 90,width: 90,);
            }, ),
          )
        ]),
      ),
    );
  }
}