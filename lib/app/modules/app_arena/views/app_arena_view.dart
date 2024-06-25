import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import '../controllers/app_arena_controller.dart';

class AppArenaView extends GetView<AppArenaController> {
  const AppArenaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rive Animation with GetX')),
      body: GetBuilder<AppArenaController>(
        init: AppArenaController(),
        builder: (controller) {
          if (controller.artboard == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return GestureDetector(
              onTap: () => controller.onStarClicked(),
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Expanded(
                      child: Rive(artboard: controller.artboard!),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () => controller.trigger1(),
                          child: const Text('Trigger 1'),
                        ),
                        ElevatedButton(
                          onPressed: () => controller.trigger2(),
                          child: const Text('Trigger 2'),
                        ),
                        ElevatedButton(
                          onPressed: () => controller.trigger3(),
                          child: const Text('Trigger 3'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
