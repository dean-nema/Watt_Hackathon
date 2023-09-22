import 'package:flutter/material.dart';
import 'package:watt/components/toolbar.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({super.key});

  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  final TextEditingController controler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Purchase Units"),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Text("ENTER AMOUNT",
             style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
            ),
            SizedBox(
                  height: 50,
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: controler,
              decoration: InputDecoration(
                labelText: "Amount",
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
                        onPressed: () => controler.clear(),
                        icon: Icon(Icons.clear)),
              ),
            ), 
            SizedBox(
                  height: 50,
            ),
             SizedBox(
                      width: 200,
                      height: 50,
                      child: MaterialButton(
                          onPressed: () {},
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
                SizedBox(
                  height: 50,
            ),
                SizedBox(
                      width: 200,
                      height: 50,
                      child: MaterialButton(
                          onPressed: () {},
                          color: Color.fromARGB(255, 97, 185, 56),
                          child: const Text(
                            "Change Payment Method",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)))),
                    ),
            Spacer()
          ],
        ),
      ),
    );
  }
}