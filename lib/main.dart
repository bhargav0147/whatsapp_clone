import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/whatsapp/provider/whatsapp_provider.dart';
import 'package:whatsapp_clone/whatsapp/view/home_screen.dart';
import 'package:whatsapp_clone/whatsapp/view/splash_screen.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => WhatsappProvider(),)
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'main',
      routes: {
        '/':(context) => SplashScreen(),
        'main':(context) => HomeScreen(),
      },
    ),
  ));
}