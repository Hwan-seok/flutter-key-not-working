import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing/controller.dart';

class VodPage extends StatefulWidget {
  final int id;
  const VodPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  _VodPageState createState() => _VodPageState();
}

class _VodPageState extends State<VodPage> {
  @override
  void initState() {
    log("vod init ${widget.id}");
    super.initState();
  }

  @override
  void dispose() {
    log("vod dispose ${widget.id}");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.find<HomeController>().remove(widget.id),
      child: Container(
        child: Text(
          widget.id.toString(),
          style: Get.textTheme.headline1,
        ),
      ),
    );
  }
}
