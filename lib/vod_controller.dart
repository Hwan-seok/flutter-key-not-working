import 'dart:developer';

import 'package:get/get.dart';

class VodController extends GetxController {
  VodController();

  @override
  void onInit() {
    log("init Vod Controller");
    super.onInit();
  }

  @override
  void onClose() {
    log("Close Vod Controller");
    super.onClose();
  }
}
