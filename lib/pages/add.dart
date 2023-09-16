import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watt/components/data_display.dart';
import 'package:watt/components/toolbar.dart';
import 'home.dart';


class AddPage extends StatelessWidget {
   AddPage({super.key});
  final txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String hint = "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
    return Scaffold(
      appBar: Toolbar(title: "ADD TOKEN"),
      body: Stack(
        children:[ Container(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 150, top: 200),
         
            child: Center(
              child: Column(
                  children: [
                    Text(
                        "ENTER TOKEN NUMBER",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                          ),
                      SizedBox(
                        height: 25,
                      ),
                    TextField(
                      
                      controller: txtController,
                      decoration: InputDecoration(
                      hintText: hint,
                      hintStyle: TextStyle(
                        color: Colors.blue,
                      ),
                      labelText: "Token",
                      labelStyle: const TextStyle(
                      color: Colors.blue,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(width: 30, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            ),
                        suffixIcon:
                            IconButton(onPressed: ()=> txtController.clear(), 
                            icon: Icon(Icons.clear)),
                      ),
                      maxLength: 14,
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.blue,
                        child: const Text(
                          "Enter",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),  
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))
                                ),
                      ),
                  ],
                ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: DataDisplay(data: first.data, title: first.title, units: first.units,)
        )
     ], ),
      )
    ;
  }
}
