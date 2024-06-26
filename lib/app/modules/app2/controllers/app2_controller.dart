import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

class App2Controller extends GetxController {
  Artboard? artboard;
  StateMachineController? stateMachineController;
  SMIInput<bool>? trigger1Input;

  @override
  void onInit() {
    super.onInit();
    loadRiveFile();
  }

  void loadRiveFile() async {
    final data = await rootBundle.load('assets/rive_assets/copybilai.riv');
    final file = RiveFile.import(data);
    artboard = file.mainArtboard;

    stateMachineController = StateMachineController.fromArtboard(
      artboard!,
      'State Machine 1', // Ensure this matches the name in your Rive file
    );

    if (stateMachineController != null) {
      artboard!.addController(stateMachineController!);
      trigger1Input = stateMachineController!.findInput<bool>(
          'Boolean 1'); // Ensure this matches the input name in your Rive file

      if (trigger1Input == null) {
        print('Trigger input not found');
      }
    } else {
      print('State Machine 1 not found in the Rive file');
    }

    update(); // Call update to refresh UI after loading the Rive file
  }

  void trigger1() {
    if (trigger1Input != null) {
      trigger1Input!.value = true;
    } else {
      print('Trigger input not found');
    }
  }
}
