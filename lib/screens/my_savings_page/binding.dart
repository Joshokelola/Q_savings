import 'package:get/get.dart';

import 'logic.dart';

class MySavingsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MySavingsPageLogic());
  }
}
