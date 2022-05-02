import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route/views/Ads.dart';
import 'package:getx_route/views/Home.dart';
import 'package:getx_route/views/NextScreen.dart';
import 'package:getx_route/views/Second.dart';
import 'package:getx_route/views/UnknownRoutePage.dart';

void main() => runApp(GetMaterialApp(
    unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
    routingCallback: (routing) {
      if(routing?.current == '/second'){
        openAds();
      }
    },
    initialRoute: '/',
    getPages: [
      GetPage(name: '/NextScreen', page: ()=>NextScreen()),
      GetPage(name: '/second', page: ()=>Second())
    ],
    home: Home()));

void openAds()
{
  print('ads');
}



