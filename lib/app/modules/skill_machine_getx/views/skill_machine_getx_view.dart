import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rive/rive.dart';

import '../controllers/skill_machine_getx_controller.dart';

class SkillMachineGetxView extends GetView<SkillMachineGetxController> {
  const SkillMachineGetxView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills Machine Getx'),
      ),
      body: Obx(() {
        return Center(
          child: controller.riveArtboard.value == null
              ? const SizedBox()
              : Stack(
                  children: [
                    Positioned.fill(
                      child: Rive(
                        artboard: controller.riveArtboard.value!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      bottom: 32,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            child: const Text('Beginner'),
                            onPressed: () => controller.levelInput?.value = 0,
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            child: const Text('Intermediate'),
                            onPressed: () => controller.levelInput?.value = 1,
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            child: const Text('Expert'),
                            onPressed: () => controller.levelInput?.value = 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        );
      }),
    );
  }
}
