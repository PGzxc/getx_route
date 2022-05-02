import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route/views/Home.dart';

class NavigatorScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Navigator")),
      body: Center(child: Column(children: [
        ElevatedButton(child: Text("Default-Navi-Home"),onPressed: () => defaultNavigator(context)),
        ElevatedButton(child: Text("Get-navi-Home"),onPressed: () => getXNavigator(context)),
        ElevatedButton(child: Text("Get-to-Home"),onPressed: () => Get.to(Home())),
      ],),),
    );
  }

 void defaultNavigator(BuildContext context){
   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
     return Home();
   }));
 }
 void getXNavigator(BuildContext context){
    navigator?.push(MaterialPageRoute(
      builder: (_){
        return Home();
      }
    ));
 }
}