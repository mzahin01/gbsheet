import 'package:get/get.dart';

import '../controllers/macos_arena_controller.dart';

class MacosArenaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MacosArenaController>(
      () => MacosArenaController(),
    );
  }
}
