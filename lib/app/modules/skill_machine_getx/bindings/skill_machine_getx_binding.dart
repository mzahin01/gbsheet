import 'package:get/get.dart';

import '../controllers/skill_machine_getx_controller.dart';

class SkillMachineGetxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SkillMachineGetxController>(
      () => SkillMachineGetxController(),
    );
  }
}
