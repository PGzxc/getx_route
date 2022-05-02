import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';

class NestedNavigation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('导航嵌套'),),
      body: Center(child: Navigator(
          key: Get.nestedKey(1), // create a key by index
          initialRoute: '/',
          onGenerateRoute: (settings) {
            if (settings.name == '/') {
              return GetPageRoute(
                page: () => Scaffold(
                  appBar: AppBar(
                    title: Text("Main"),
                  ),
                  body: Center(
                    child: TextButton(
                      onPressed: () {
                        Get.toNamed('/second', id:1); // navigate by your nested route by index
                      },
                      child: Text("Go to second"),
                    ),
                  ),
                ),
              );
            } else if (settings.name == '/second') {
              return GetPageRoute(
                page: () => Center(
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("Main"),
                    ),
                    body: Center(
                        child:  Text("second")
                    ),
                  ),
                ),
              );
            }
          }
      ),),

    );
  }

}