import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MySavingsPage extends StatefulWidget {
  @override
  _MySavingsPageState createState() => _MySavingsPageState();
}

class _MySavingsPageState extends State<MySavingsPage> {
  final logic = Get.find<MySavingsPageLogic>();
  final state = Get.find<MySavingsPageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void dispose() {
    Get.delete<MySavingsPageLogic>();
    super.dispose();
  }
}
