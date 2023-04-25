import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/whatsapp/provider/whatsapp_provider.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
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
                  backgroundImage:
                  AssetImage("assets/images/user.png"),
                  radius: 25,child: Align(
                  alignment: Alignment(1.2,0.9),
                    child: Container(
                    height: 23,width: 23,
                    decoration: BoxDecoration(
                        color: Colors.green,shape: BoxShape.circle
                    ),child: Center(
                      child: Icon(Icons.add,color: Colors.white,size: 20,),
                    ),
                ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 410,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My Status",style: TextStyle(
                          fontSize: 20, letterSpacing: 1, fontFamily: 'popins'),),
                      Text(
                        "Tap to add status update",
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
                itemBuilder: (context, index) => statusList(index),
                itemCount: providerFalse!.dataList.length,
              ),
            ),
          ],
        ),
      )
    ));
  }
  Widget statusList(int index) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          SizedBox(width: 10),
          Container(
            alignment: Alignment.center,
            height: 55,width: 55,decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),
            child: CircleAvatar(
              backgroundImage:
              AssetImage("${providerFalse!.dataList[index].image}"),
              radius: 25,
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 410,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${providerFalse!.dataList[index].name}",style: TextStyle(
                    fontSize: 20, letterSpacing: 1, fontFamily: 'popins'),),
                Text(
                  "${providerFalse!.dataList[index].time}",
                  style: TextStyle(
                      fontSize: 15, letterSpacing: 1, fontFamily: 'popins',color: Colors.black45),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
