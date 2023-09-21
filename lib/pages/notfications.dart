import 'package:flutter/material.dart';
import 'package:watt/components/toolbar.dart';

class NotfPage extends StatefulWidget {
  // String name;
  String messageText;
  // String imageUrl;
  // String time;
  // bool isMessageRead;
  NotfPage({super.key, required this.messageText, required});

  @override
  State<NotfPage> createState() => _NotfPageState();
}

class _NotfPageState extends State<NotfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Toolbar(title: "Notfication"),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/wallpaper.jpg"),
                  fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    // physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        constraints: const BoxConstraints(
                          maxWidth: 200,
                        ),
                        padding: EdgeInsets.only(
                            left: 14, right: 14, top: 10, bottom: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            constraints: const BoxConstraints(
                              maxWidth: 200,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              
                              color:  (messages[index].importance == "one" 
                              ? Color.fromARGB(255, 64, 141, 64)
                               : Color.fromARGB(255, 207, 105, 10)),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        messages[index].messageContent,
                                        style: TextStyle(
                                          fontSize: 15,
                                          //fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                    Text(
                                      messages[index].messageTime,
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class ChatMessage {
  String messageContent;
  String messageTime;
  String importance;
  ChatMessage({required this.messageContent, required this.importance, required this.messageTime});
}

List<ChatMessage> messages = [
  ChatMessage(
      messageContent:
          "You have spent total of 12 Units the previous Day, Proceed to Monitor Page for more details",
      messageTime: "00:01",
      importance: "one"),
  // ChatMessage(messageContent: "You have succesfully topped up 5 units", messageTime: "07:23"),
  // ChatMessage(
  //     messageContent: "You are left with a total of 2 Units. Please Recharge",
  //     messageTime: "09:45",
  //     importance: "one"),
  ChatMessage(
      messageContent:
          "There is an electricity outage in your area. Will be fixed within the next 4 hours",
      messageTime: "10:45",
      importance: "two"),
  
  ChatMessage(
      messageContent: "You have depleted all Units. Please Recharge",
      messageTime: "10:58",
      importance: "one"
      ),
];
