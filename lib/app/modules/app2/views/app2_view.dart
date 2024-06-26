import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import '../controllers/app2_controller.dart';

class App2View extends GetView<App2Controller> {
  const App2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rive Animation with GetX')),
      body: GetBuilder<App2Controller>(
        init: App2Controller(),
        builder: (controller) {
          if (controller.artboard == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Container(
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
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
