import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

class AppArenaController extends GetxController {
  Artboard? artboard;
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
    artboard = file.mainArtboard;
    stateMachineController = StateMachineController.fromArtboard(
      artboard!,
      'State Machine 1',
    );
    if (stateMachineController != null) {
      artboard!.addController(stateMachineController!);
      trigger1Input = stateMachineController!.findInput<bool>('Trigger 1');
      trigger2Input = stateMachineController!.findInput<bool>('Trigger 2');
      trigger3Input = stateMachineController!.findInput<bool>('Trigger 3');
    } else {
      print('State Machine 1 not found in the Rive file');
    }
    update(); // Call update to refresh UI after loading the Rive file
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
