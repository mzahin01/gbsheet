import 'package:get/get.dart';

import '../controllers/web_page_arena_controller.dart';

class WebPageArenaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebPageArenaController>(
      () => WebPageArenaController(),
    );
  }
}
