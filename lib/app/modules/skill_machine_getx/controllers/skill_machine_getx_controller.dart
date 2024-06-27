import 'package:get/get.dart';
import 'package:rive/rive.dart';

class SkillMachineGetxController extends GetxController {
  Rx<Artboard?> riveArtboard = Rx(null);
  SMINumber? levelInput;

  @override
  void onInit() {
    super.onInit();

    _loadRiveFile();
  }

  Future<void> _loadRiveFile() async {
    final file = await RiveFile.asset('assets/rive_assets/skills.riv');

    final artboard = file.mainArtboard.instance();
    var controller =
        StateMachineController.fromArtboard(artboard, 'Designer\'s Test');
    if (controller != null) {
      artboard.addController(controller);
      levelInput = controller.getNumberInput('Level');
    }
    riveArtboard.value = artboard;
  }
}
