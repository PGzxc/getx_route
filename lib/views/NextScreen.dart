import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   var argument= Get.arguments;
   var device=Get.parameters['device'];
   var id=  Get.parameters['id'];
   var name= Get.parameters['name'];

   return Scaffold(
     appBar: AppBar(title:Text("NextScreen: ")),
     body: Center(child: Column(children: [
       ElevatedButton(child: Text('返回'),onPressed: ()=>Get.back()),
       Text("argument:${argument}"),
       Text("device=${device},id=${id},name=${name}"),
     ],)),);
  }

}