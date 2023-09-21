import 'package:flutter/material.dart';
import 'package:watt/components/data_display.dart';
import 'package:watt/components/toolbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Watt"),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          //  image: DecorationImage(
          //   image: AssetImage("assets/images/wallpaper.jpg"),
          //     fit: BoxFit.cover),
        ),
        child: ListView.separated(
          itemBuilder: (context, index) {
            mockSetup();
           
            return DataDisplay(
              data: list[index].data,
              title: list[index].title,
              units: list[index].units,
            );
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

int count = 0;
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

void mockSetup() {
  if (count == 0) {
    mockData();
    count++;
  }
}

void mockData() {
  first.setData("Available Units", 0, "kWH");
  second.setData("Last Purchase", 30, "kWH");
  third.setData("Average Usage/Day", 45, "kWH");
  fourth.setData("Estimated Remaining", 26, "hours");
  fifth.setData("Last Purchase lasted", 14, "Days");
}
