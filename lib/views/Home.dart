import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route/views/NavigatorScreen.dart';
import 'package:getx_route/views/NestedNavigation.dart';
import 'package:getx_route/views/NextScreen.dart';
import 'package:getx_route/views/Second.dart';
import '../controller/Controller.dart';
import 'Other.dart';


class Home extends StatelessWidget {

  @override
  Widget build(context) {
    //通过Get.put()方法初始化Controller
    final Controller c = Get.put(Controller());

    return Scaffold(
      //当count变化时，Obx可以监听改变
        appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),
        //通过Get.to方法取代Navigator.push代替页面间的跳转
        body: Center(child:
        Column(children: [
          ElevatedButton(child: Text("To-NextScreen"), onPressed: () => Get.to(NextScreen())),
          ElevatedButton(child: Text("Off-NextScreen"), onPressed: () => Get.off(NextScreen())),

          ElevatedButton(child: Text("Navigator"), onPressed: () => Get.to(NavigatorScreen())),

          ElevatedButton(child: Text("To-Name"), onPressed: () => Get.toNamed("/NextScreen")),
          ElevatedButton(child: Text("Off-Name"), onPressed: () => Get.offNamed("/NextScreen")),

          ElevatedButton(child: Text("Error"), onPressed: () => Get.toNamed("/NextScreen1")),


          ElevatedButton(child: Text("To-NextScreen-argument"), onPressed: () => Get.to(NextScreen(),arguments: 'Get is the best')),
          ElevatedButton(child: Text("To-NextScreen-links"), onPressed: () => Get.offAllNamed("/NextScreen?device=phone&id=354&name=Enzo")),

          ElevatedButton(child: Text("MiddleWare"), onPressed: () => Get.toNamed('/second')),

          ElevatedButton(child: Text("嵌套导航"), onPressed: () => Get.to(NestedNavigation())),

        ],)

        ),
        floatingActionButton:
        FloatingActionButton(child: Icon(Icons.add), onPressed: c.increment));
  }
}