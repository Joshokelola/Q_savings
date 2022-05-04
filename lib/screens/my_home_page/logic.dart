import 'package:carousel_slider/carousel_options.dart';
import 'package:get/get.dart';

import 'state.dart';

class MyHomePageLogic extends GetxController {
  final MyHomePageState state = MyHomePageState();
  var currentIndex = 0.obs;
  dynamic onPageChanged({required int index, required CarouselPageChangedReason reason}) {
    currentIndex.value = index;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
