import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watt/components/toolbar.dart';
import 'package:watt/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Profile"),
      body: Column(
        children: [ 
          Container(
               decoration: BoxDecoration(
                color: Color.fromARGB(255, 189, 214, 179)
               ),
               child: Row(
            children: [
              Expanded(
                child: Image.asset("../assets/images/profile(1).png",
                width: 150,
                height: 300,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text("Name: Dean Nemaramba",
                    style: AppText.details,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Address: Palapye Biust",
                    style: AppText.details,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("ID: FN3299248",
                     style: AppText.details,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Username: dean",
                     style: AppText.details,
                     )
                  ],
                ),
              )

            ],
          ),
          ),
          Divider(
            thickness: 4,
            height: 5,
          ),
       Container(
          
        child: Column(
          children: [
           SizedBox(
            height: 20,
           ),
           Text("Meter Number: 334 2343 2333", style: AppText.details2,),
           SizedBox(
            height: 20,
           ),
           Text("Meter Brand: Conlog", style: AppText.details2,),
           SizedBox(
            height: 20,
           ),
           Text("Meter Serail: M332 S2322 ", style: AppText.details2,),
         //  Spacer()
          ],
        ),
       )
       ],
      
    )
    );
  }
}