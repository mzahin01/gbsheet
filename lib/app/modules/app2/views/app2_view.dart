import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import '../controllers/app2_controller.dart';

class App2View extends GetView<App2Controller> {
  const App2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skinning Demo'),
      ),
      body: Stack(
        children: [
          Center(
            child: RiveAnimation.asset(
              'assets/rive_assets/copybilai.riv',
              fit: BoxFit.cover,
              onInit: controller.onRiveInit,
            ),
          ),
        ],
      ),
    );
  }
}
