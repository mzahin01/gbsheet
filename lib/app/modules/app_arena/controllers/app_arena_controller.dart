// ignore_for_file: avoid_print

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

class AppArenaController extends GetxController {
  Rx<Artboard?> artboard = Rx(null);
  StateMachineController? stateMachineController;
  SMIInput<bool>? trigger1Input;
  SMIInput<bool>? trigger2Input;
  SMIInput<bool>? trigger3Input;

  @override
  void onInit() {
    super.onInit();
    loadRiveFile();
  }

  void loadRiveFile() async {
    final data = await rootBundle.load('assets/rive_assets/trial.riv');
    final file = RiveFile.import(data);
    Artboard a = file.mainArtboard;
    stateMachineController = StateMachineController.fromArtboard(
      a,
      'State Machine 1',
    );
    if (stateMachineController != null) {
      a.addController(stateMachineController!);
      trigger1Input = stateMachineController!.findInput<bool>('Trigger 1');
      trigger2Input = stateMachineController!.findInput<bool>('Trigger 2');
      trigger3Input = stateMachineController!.findInput<bool>('Trigger 3');
    } else {
      print('State Machine 1 not found in the Rive file');
    }
    artboard.value = a;
  }

  void trigger1() {
    trigger1Input?.value = true;
  }

  void trigger2() {
    trigger2Input?.value = true;
  }

  void trigger3() {
    trigger3Input?.value = true;
  }

  void onStarClicked() {
    trigger1();
  }
}
