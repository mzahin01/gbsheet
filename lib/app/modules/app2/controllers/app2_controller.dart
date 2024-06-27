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
    // loadRiveFile();
    onRiveInit(artboard!);
  }

  void onRiveInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(
      artboard,
      'State Machine 1',
      // onStateChange: _onStateChange,
    );
    artboard.addController(controller!);
  }

  // void loadRiveFile() async {
  //   final data = await rootBundle.load('assets/rive_assets/copybilai.riv');
  //   final file = RiveFile.import(data);
  //   artboard = file.mainArtboard;

  //   stateMachineController = StateMachineController.fromArtboard(
  //     artboard!,
  //     'State Machine 1', // Ensure this matches the name in your Rive file
  //   );

  //   if (stateMachineController != null) {
  //     artboard!.addController(stateMachineController!);
  //     trigger1Input = stateMachineController!.findInput<bool>(
  //         'Boolean 1'); // Ensure this matches the input name in your Rive file

  //     if (trigger1Input == null) {
  //       print('Trigger input not found');
  //     }
  //   } else {
  //     print('State Machine 1 not found in the Rive file');
  //   }

  //   update(); // Call update to refresh UI after loading the Rive file
  // }

  // void trigger1() {
  //   if (trigger1Input != null) {
  //     trigger1Input!.value = !trigger1Input!.value;
  //   } else {
  //     print('Trigger input not found');
  //   }
  // }
}


// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';

// /// Basic skinning example. The skinning states is set in the Rive editor and
// /// triggers are used to change the value.
// class CopyBilai extends StatefulWidget {
//   const CopyBilai({Key? key}) : super(key: key);

//   @override
//   State<CopyBilai> createState() => _CopyBilaiState();
// }

// class _CopyBilaiState extends State<CopyBilai> {
  // void _onRiveInit(Artboard artboard) {
  //   final controller = StateMachineController.fromArtboard(
  //     artboard,
  //     'State Machine 1',
  //     // onStateChange: _onStateChange,
  //   );
  //   artboard.addController(controller!);
  // }

//   // void _onStateChange(String stateMachineName, String stateName) {
//   //   // if (stateName.contains("Skin_")) {
//   //   setState(() {});
//   //   // }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Skinning Demo'),
//       ),
//       body: Stack(
//         children: [
//           Center(
//             child: RiveAnimation.asset(
//               'assets/copybilai.riv',
//               fit: BoxFit.cover,
//               onInit: _onRiveInit,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
