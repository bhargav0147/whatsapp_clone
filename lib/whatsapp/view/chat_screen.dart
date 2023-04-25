import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/whatsapp/provider/whatsapp_provider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  WhatsappProvider? providerTrue;
  WhatsappProvider? providerFalse;

  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<WhatsappProvider>(context, listen: false);
    providerTrue = Provider.of<WhatsappProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
            body: ListView.builder(
              itemBuilder: (context, index) => chatList(index),
              itemCount: providerFalse!.dataList.length,
            )));
  }

  Widget chatList(int index) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          SizedBox(width: 10),
          CircleAvatar(
            backgroundImage:
                AssetImage("${providerFalse!.dataList[index].image}"),
            radius: 25,
          ),
          SizedBox(width: 10),
          Container(
            width: 410,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("${providerFalse!.dataList[index].name}",style: TextStyle(
                        fontSize: 20, letterSpacing: 1, fontFamily: 'popins'),),
                    Spacer(),
                    Text("${providerFalse!.dataList[index].time}",style: TextStyle(
                        fontSize: 15, letterSpacing: 1, fontFamily: 'popins',color: Colors.black45),),
                  ],
                ),
                Text(
                  "${providerFalse!.dataList[index].msg}",
                  style: TextStyle(
                      fontSize: 15, letterSpacing: 1, fontFamily: 'popins',color: Colors.black45),
                )
              ],
            ),
          ),
          Spacer(),

          SizedBox(width: 10)
        ],
      ),
    );
  }
}
