import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watt/components/toolbar.dart';


class AddPage extends StatelessWidget {
   AddPage({super.key});
  final txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "ADD TOKEN"),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 100, top: 100),
          color: Colors.amber,
          child: Column(
              children: [
                Text(
                    "ENTER TOKEN NUMBER",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                      ),
                  SizedBox(
                    height: 16,
                  ),
                TextField(
                  controller: txtController,
                  decoration: InputDecoration(
                  hintText: "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _",
                  fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        )),
                    suffixIcon:
                        IconButton(onPressed: ()=> txtController.clear(), 
                        icon: Icon(Icons.clear)),
                  ),
                  maxLength: 14,
                  keyboardType: TextInputType.phone,
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  child: Text(
                    "Enter",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
        ),
      ),
      )
    ;
  }
}
