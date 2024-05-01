import 'package:caputralens/Photographer/aboutus.dart';
import 'package:caputralens/Photographer/help.dart';
import 'package:caputralens/Photographer/photochangepassword.dart';
import 'package:caputralens/Photographer/photocomplain.dart';
import 'package:caputralens/Photographer/support.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhotographerProfile extends StatefulWidget {
  const PhotographerProfile({super.key});

  @override
  State<PhotographerProfile> createState() => _PhotographerProfileState();
}

class _PhotographerProfileState extends State<PhotographerProfile> {
    String? _selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserName",style:  TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        actions: [
          DropdownButton<String>(
            icon: const Icon(Icons.menu, color: Colors.white),
            value: _selectedOption,
            onChanged: (String? newValue) {
              setState(() {
                _selectedOption = newValue!;
                switch (_selectedOption) {
                  case 'About Us':
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AboutUs()),
                    );
                    break;
                  case 'Support':
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SupportPhoto()),
                  );
                    break;
                  case 'Help':
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HelpPhoto()),
                  );
                    break;
                  case 'Change Password':
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChangePasswordPhoto()),
                  );
                    break;  
                  case 'Complains':
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ComplainsPhoto()),
                  );
                    // break;  
                 
                  default:
                }
              });
            },
            items: <String>['About Us', 'Support', 'Help','Change Password','Complains']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              const SizedBox(width: 15,),
              
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username",style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("Type of photography",style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("email",style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("year of exp",style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                  Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text("Location",style: TextStyle(color: Colors.white,),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                  Icon(Icons.phone,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text("Phone",style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ],
              ),
              
            ],
          ),
          const Row(
            children: [

            ],
          ),
          const SizedBox(height: 30,),
          Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),itemBuilder:(context, index){
              return Container(color: Colors.red,height: 90,width: 90,);
            }, ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: const Icon(FontAwesomeIcons.whatsapp,color: Colors.green,size: 50,),),
    );
  }
}