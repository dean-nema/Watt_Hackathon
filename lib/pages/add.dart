import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watt/components/data_display.dart';
import 'package:watt/components/toolbar.dart';
import 'package:watt/pages/notfications.dart';
import 'home.dart';

class AddPage extends StatefulWidget {
  AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int? token;
    String? valuee;
    String hint = "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
    return Scaffold(
      appBar: Toolbar(title: "ADD TOKEN"),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Container(
              margin:
                  EdgeInsets.only(left: 10, right: 10, bottom: 150, top: 200),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "ENTER TOKEN NUMBER",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      controller: txtController,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: false,
                        fillColor: Colors.white,
                        // hintText: hint,
                        // hintStyle: TextStyle(
                        //   color: Colors.blue,
                        // ),
                        labelText: "Token",
                        labelStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(width: 30, color: Colors.blue),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () => txtController.clear(),
                            icon: Icon(Icons.clear)),
                      ),
                      maxLength: 14,
                      keyboardType: TextInputType.phone,
                    ),
                    // TextField(
                    //   textAlign: TextAlign.center,
                    //   controller: txtController,
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontSize: 23,
                    //       fontWeight: FontWeight.bold
                    //       ),
                    //   decoration: InputDecoration(
                    //     hintText: hint,
                    //     hintStyle: TextStyle(
                    //       color: Colors.blue,
                    //     ),
                    //     labelText: "Token",
                    //     labelStyle: const TextStyle(
                    //       color: Colors.blue,
                    //     ),
                    //     filled: true,
                    //     fillColor: Colors.white,
                    //     border: const OutlineInputBorder(
                    //       borderSide: BorderSide(width: 30, color: Colors.blue),
                    //       borderRadius: BorderRadius.all(
                    //         Radius.circular(30.0),
                    //       ),
                    //     ),
                    //     suffixIcon: IconButton(
                    //         onPressed: () => txtController.clear(),
                    //         icon: Icon(Icons.clear)),
                    //   ),
                    //   maxLength: 14,
                    //   keyboardType: TextInputType.phone,
                    // ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: MaterialButton(
                          onPressed: () {
                            token = int.parse((txtController.text));
                            if (token == 132300400600) {
                              setState(() {
                                first.data = first.data! + 100;
                                second.data = 100;
                                second.amount = 50;
                                fourth.data = fourth.data! + 12;
                                messages.add(ChatMessage(
                                  messageContent:
                                      "You have topped up 100 units successfully you now have ${first.data}",
                                  messageTime: "18:31",
                                  importance: "one",
                                ));
                              });
                            }
                            txtController.clear();
                          },
                          color: Colors.white,
                          child: const Text(
                            "Enter",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)))),
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
              child: DataDisplay(
                data: first.data,
                title: first.title,
                units: first.units,
              ))
        ],
      ),
    );
  }
}
