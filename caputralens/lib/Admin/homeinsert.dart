import 'dart:io';
import 'package:caputralens/Admin/homeview.dart';
import 'package:caputralens/controller/admincontrol.dart';
import 'package:caputralens/model/adminmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeInsert extends StatefulWidget {
  const HomeInsert({super.key});

  @override
  State<HomeInsert> createState() => _HomeInsertState();
}

class _HomeInsertState extends State<HomeInsert> {
  AdminController obj2=AdminController();
  TextEditingController title=TextEditingController();
  TextEditingController deadline=TextEditingController();
  TextEditingController price=TextEditingController();
  TextEditingController place=TextEditingController();
  String? groupedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
          color: Colors.black,
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 850,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      //image==null?Text(""): Image.file(image!),
                      Container(
                        width: 400,
                        height: 260,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)),
                        child: Column(
                    
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Drag and drop your image file here to start uploading",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      indent: 40,
                                      endIndent: 10,
                                      color: Colors.black45,
                                      thickness: 1,
                                      height: 3,
                                    ),
                                  ),
                                  Text(
                                    'OR',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      indent: 10,
                                      endIndent: 40,
                                      color: Colors.black45,
                                      thickness: 1,
                                      height: 3,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              SizedBox(
                                  width: 150,
                                  height: 40,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor: Colors.indigo),
                                      onPressed: () {

                                        addImage();
                                      },
                                      child: const Text("Upload File"))),
                                     
                            ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: title,
                        decoration: InputDecoration(
                            labelText: "Title",
                            hintText: "Title",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 20,
                      ),

               
                      TextField(
                        controller: deadline,
                        decoration: InputDecoration(
                            labelText: "Deadline",
                            hintText: "Deadline",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: price,
                        decoration: InputDecoration(
                            labelText: "Price & Description",
                            hintText: "Price & Description",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: place,
                        decoration: InputDecoration(
                            labelText: "Place of contest contacted",
                            hintText: "Title",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RadioListTile(
                          title: Text("Paid",style: TextStyle(fontWeight: FontWeight.bold),),
                          value: "Paid",
                          groupValue: groupedValue,
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              groupedValue = value;
                            });
                          }),
                      RadioListTile(
                          title: Text("Unpaid",style: TextStyle(fontWeight: FontWeight.bold),),
                          value: "unpaid",
                          groupValue: groupedValue,
                          onChanged: (value) {
                            setState(() {
                              groupedValue = value;
                            });
                            print(value);
                          }),
                      SizedBox(
                          width: 350,
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.white),
                              onPressed: () {
                                obj2.addEventData(AdminModel(image: "downloadUrl", title: title.text, deadline: deadline.text, price: price.text, place: place.text, payment: groupedValue!),context);
                              
                              },
                              child: const Text("Upload"))),
                           
                            
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
final firestore=FirebaseStorage.instance;
final db=FirebaseFirestore.instance;
File ?image;
Future addImage()async{
  DocumentReference docUpdate=db.collection('Contest').doc(FirebaseAuth.instance.currentUser!.uid);
  final picker=ImagePicker();
  final pickerfile=await picker.pickImage(source: ImageSource.gallery);
  SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
  if(pickerfile!=null){
    final currenttime=TimeOfDay.now();
    image=File(pickerfile.path);
    UploadTask uploadTask = firestore.ref().child("image$currenttime").putFile(image!,metadata);
    TaskSnapshot snapshot =await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    docUpdate.update({"image":downloadUrl});

  return downloadUrl;
  }
}
}

