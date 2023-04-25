import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp/model/whatsapp_model.dart';

class WhatsappProvider extends ChangeNotifier
{
    int index=1;
    void changeicon(int value)
    {
      index=value;
      notifyListeners();
    }
    List<WhatsappModel> dataList=[
      WhatsappModel(image: "assets/images/11.jpg",name: 'Mark Zuckerberg',msg: 'Introducing IGTV on Instagram!',time:'9:11 PM' ),
      WhatsappModel(image: "assets/images/12.jpg",name: 'Bill Gates',msg: 'Tried Linux and I Loved it! :p',time:'8:47 PM' ),
      WhatsappModel(image: "assets/images/13.jpg",name: 'Sunder Pichai',msg: 'Gotta add a pinch of ML in every single tech!',time:'7:07 PM' ),
      WhatsappModel(image: "assets/images/14.jpg",name: 'Elon Musk',msg: 'You need some funding?',time:'6:33 PM' ),
      WhatsappModel(image: "assets/images/15.jpg",name: 'Tim Cook',msg: 'Finally, switching to Android..',time:'3:55 PM' ),
      WhatsappModel(image: "assets/images/16.jpg",name: 'Satya Nadella',msg: 'Alexa sucks! Google Assistant is the boss!',time:'1:27 PM' ),
      WhatsappModel(image: "assets/images/17.jpg",name: 'Warren Buffet',msg: 'I m the richest in the list',time:'YESTERDAY' ),
      WhatsappModel(image: "assets/images/18.jpg",name: 'Steve Jobes',msg: 'Tim couldnt continue my legacy unfortunately',time:'YESTERDAY' ),
    ];

}