import 'package:get/get.dart';

import 'logic.dart';

class MyHomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyHomePageLogic());
  }
}
