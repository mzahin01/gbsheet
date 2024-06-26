import 'package:get/get.dart';

import '../controllers/app2_controller.dart';

class App2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<App2Controller>(
      () => App2Controller(),
    );
  }
}
