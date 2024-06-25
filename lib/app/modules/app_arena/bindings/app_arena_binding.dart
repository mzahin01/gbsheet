import 'package:get/get.dart';

import '../controllers/app_arena_controller.dart';

class AppArenaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppArenaController>(
      () => AppArenaController(),
    );
  }
}
