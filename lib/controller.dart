import 'dart:developer';

import 'package:get/get.dart';
import 'package:testing/vod_controller.dart';

class HomeController extends GetxController {
  final pages = <int>[];

  @override
  void onInit() {
    pages.addAll(List.generate(100, (index) => index));
    pages.forEach((element) {
      Get.lazyPut(
        () => VodController(element),
        tag: pages[element].toString(),
        fenix: true,
      );
    });
    super.onInit();
  }

  void remove(int id) {
    pages.remove(id);
    log("$id 삭제");
    update();
  }
}
