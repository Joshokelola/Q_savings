import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:q_savings_app/screens/my_home_page/Widgets/top_header_widget.dart';

import 'logic.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<MyHomePageLogic>();
    final state = Get.find<MyHomePageLogic>().state;

    //TODO:Wrap this widget with a singlechildscrollview
    return Column(
      children: [
        const TopHeaderWidget(),
      ],
    );
  }
}
