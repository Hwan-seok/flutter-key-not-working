import 'dart:developer';

import 'package:get/get.dart';

class VodController extends GetxController {
  final int id;

  VodController(this.id);

  @override
  void onInit() {
    log("init $id Vod Controller");
    super.onInit();
  }

  @override
  void onClose() {
    log("Close $id Vod Controller");
    super.onClose();
  }
}
