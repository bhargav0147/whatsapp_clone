import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/whatsapp/provider/whatsapp_provider.dart';
import 'package:whatsapp_clone/whatsapp/view/call_screen.dart';
import 'package:whatsapp_clone/whatsapp/view/chat_screen.dart';
import 'package:whatsapp_clone/whatsapp/view/communities_screen.dart';
import 'package:whatsapp_clone/whatsapp/view/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WhatsappProvider? providerTrue;
  WhatsappProvider? providerFalse;

  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<WhatsappProvider>(context, listen: false);
    providerTrue = Provider.of<WhatsappProvider>(context, listen: true);
    return SafeArea(
        child: DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff008069),
          title: Row(
            children: [
              Text("Whatsapp",
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    fontFamily: 'popins',
                    color: Colors.white,
                  )),
              Spacer(),
              Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 25,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
              SizedBox(width: 15),
              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              )
            ],
          ),
          bottom: TabBar(
              indicatorColor: Colors.white,
              onTap: (value) {
                providerFalse!.changeicon(value);
              },
              tabs: [
                Tab(
                    child: Center(
                  child: Icon(Icons.group),
                )),
                Tab(
                    child: Center(
                        child: Text(
                  "Chats",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontFamily: 'popins',
                      fontSize: 15),
                ))),
                Tab(
                    child: Center(
                        child: Text(
                  "Status",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontFamily: 'popins',
                      fontSize: 15),
                ))),
                Tab(
                    child: Center(
                        child: Text(
                  "Calls",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontFamily: 'popins',
                      fontSize: 15),
                ))),
              ]),
        ),
        body: TabBarView(children: [
          CommunitiesScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              providerTrue!.index == 1
                  ? Icons.chat
                  : providerTrue!.index == 2
                      ? Icons.camera_alt_outlined
                      :providerTrue!.index == 0?Icons.done:Icons.add_call,
              color: Colors.white,
              size: 20,
            ),
            backgroundColor: Color(0xff008069)),
      ),
    ));
  }
}
