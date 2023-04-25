import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/whatsapp/provider/whatsapp_provider.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  WhatsappProvider? providerTrue;
  WhatsappProvider? providerFalse;

  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<WhatsappProvider>(context, listen: false);
    providerTrue = Provider.of<WhatsappProvider>(context, listen: true);
    return SafeArea(child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Container(
                height: 70,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green,
                      child: Center(child: Transform.rotate(angle: pi/1.3,child: Icon(Icons.link,color: Colors.white,size: 27,)),),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 410,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Create call link",style: TextStyle(
                              fontSize: 20, letterSpacing: 1, fontFamily: 'popins'),),
                          Text(
                            "Share a link for your WhatsApp call",
                            style: TextStyle(
                                fontSize: 15, letterSpacing: 1, fontFamily: 'popins',color: Colors.black45),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Text("Recent updates",style: TextStyle(color: Colors.black45,fontFamily: 'popins',letterSpacing: 1),),
              SizedBox(height: 5),
              SizedBox(
                height: 515,width: double.infinity,
                child: ListView.builder(
                  itemBuilder: (context, index) => callList(index),
                  itemCount: providerFalse!.dataList.length,
                ),
              ),
            ],
          ),
        )
    ));
  }
  Widget callList(int index) {
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
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${providerFalse!.dataList[index].name}",style: TextStyle(
                        fontSize: 20, letterSpacing: 1, fontFamily: 'popins'),),
                    Row(
                      children: [
                        Transform.rotate(angle: 5.5,child: Icon(Icons.arrow_forward,color: Colors.green,size: 17,)),
                        SizedBox(width: 8),
                        Text(
                          "${providerFalse!.dataList[index].time}",
                          style: TextStyle(
                              fontSize: 15, letterSpacing: 1, fontFamily: 'popins',color: Colors.black45),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.call,color: Colors.green,size: 25,),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
