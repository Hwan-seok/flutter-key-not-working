import 'dart:developer' as d;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing/controller.dart';
import 'package:testing/live_page.dart';
import 'package:testing/vod_controller.dart';
import 'package:testing/vod_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [],
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Get.create(() => VodController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            d.log("page build index: $index");
            if (index < 2)
              return LivePage(
                key: ValueKey(controller.pages[index]),
                id: controller.pages[index],
              );
            else
              return VodPage(
                // init / dispose => called on update
                key: ValueKey(controller.pages[index]),
                id: controller.pages[index],
              );
          },
          itemCount: controller.pages.length,
        ),
      ),
    );
  }
}
