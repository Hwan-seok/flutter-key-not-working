import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing/controller.dart';
import 'package:testing/vod_controller.dart';

class VodPage extends GetWidget<VodController> {
  final int id;
  const VodPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.find<HomeController>().remove(id),
      child: Container(
        child: Text(
          id.toString(),
          style: Get.textTheme.headline1,
        ),
      ),
    );
  }
}
