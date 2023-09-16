import 'package:flutter/material.dart';
import 'package:watt/components/data_display.dart';
import 'package:watt/components/toolbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Watt"),
      body: Container(
        decoration:  BoxDecoration(
         color:Colors.amber.withOpacity(0.3),
        //  image: DecorationImage(
           //   image: AssetImage("assets/images/wallpaper.jpg"),
         //     fit: BoxFit.cover),
       ),
        child: ListView.separated(
          itemBuilder: (context, index) {
            mockData();
            return DataDisplay(
                data: list[index].data, title: list[index].title, units: list[index].units,);
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 24,
            );
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}

var list = [first, second, third, fourth, fifth];

class Data {
  void setData(String title, int data, String units) {
    this.title = title;
    this.data = data;
    this.units = units;
  }

  String? title;
  int? data;
  String? units;
}

Data first = Data();
Data second = Data();
Data third = Data();
Data fourth = Data();
Data fifth = Data();


void mockData() {
  first.setData("Available Units", 392, "kWH");
  second.setData("Last Purchase", 30, "kWH");
  third.setData("Average Usage/Day", 45, "kWH");
  fourth.setData("Estimated Remaining",26, "hours");
  fifth.setData("Available Units", 389, "kWH");
  
}
