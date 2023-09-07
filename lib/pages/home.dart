import 'package:flutter/material.dart';
import 'package:watt/components/toolbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Watt"),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ;
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 24,
          );
        },
        itemCount: users.length,
      ),,
    );
  }
}