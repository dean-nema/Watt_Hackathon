import 'package:flutter/material.dart';
import 'package:watt/styles/app_text.dart';

class DataDisplay extends StatelessWidget {
  final int? data;
  final String? units;
  final String? title;
  final int? amount;
  const DataDisplay(
      {super.key, required this.data, this.units, required this.title, this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            title!,
            style: AppText.titles,
          ),
          Container(
            //margin: EdgeInsets.all(50),
            height: 80,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: 50,
                height: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                   
                    child: (amount == null ? Text(
                      "$data $units",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ) : Row(
                          children: [
                            Expanded(
                              flex: 2,
                      child: Text(
                      "$data $units",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                          ),
                          ),
                        Expanded(
                          flex: 1,
                          child: Text(
                      "P$amount",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                          )
                        ),
                          ],
                    ))
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
