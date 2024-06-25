// ignore_for_file: avoid_print

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

class AppArenaController extends GetxController {
  late Artboard artboard;
  StateMachineController? stateMachineController;

  @override
  void onInit() {
    super.onInit();
    loadRiveFile();
  }

  void loadRiveFile() async {
    final data = await rootBundle.load('rive_assets/trial.riv');
    final file = RiveFile.import(data);
    artboard = file.mainArtboard;
    stateMachineController = StateMachineController.fromArtboard(
      artboard,
      'State Machine 1',
    );
    if (stateMachineController != null) {
      artboard.addController(stateMachineController!);
    } else {
      print('State Machine 1 not found in the Rive file');
    }
    update(); // Call update to refresh UI after loading the Rive file
  }

  void trigger1() {
    stateMachineController?.findInput<bool>('Trigger 1')?.value = true;
  }

  void trigger2() {
    stateMachineController?.findInput<bool>('Trigger 2')?.value = true;
  }

  void trigger3() {
    stateMachineController?.findInput<bool>('Trigger 3')?.value = true;
  }

  // Add methods for other triggers as needed
}
