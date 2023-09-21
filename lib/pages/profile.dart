import 'package:flutter/material.dart';
import 'package:watt/components/toolbar.dart';
import 'package:watt/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Profile"),
      body: Column(
        children: [
          Row(
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
                    Text("Username: deanNema",
                     style: AppText.details,
                     )
                  ],
                ),
              )

            ],
          ),
          Divider(
            thickness: 4,
            height: 5,
          )
        ],
      ),
    );
  }
}