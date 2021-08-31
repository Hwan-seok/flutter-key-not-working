import 'dart:developer';

import 'package:get/get.dart';

class HomeController extends GetxController {
  final pages = <int>[];

  @override
  void onInit() {
    pages.addAll(List.generate(100, (index) => index));
    super.onInit();
  }

  void remove(int id) {
    pages.remove(id);
    log("$id 삭제");
    update();
  }
}
