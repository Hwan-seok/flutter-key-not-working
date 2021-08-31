import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LivePage extends StatelessWidget {
  final int id;

  const LivePage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        id.toString(),
        style: Get.textTheme.headline1,
      ),
    );
  }
}
