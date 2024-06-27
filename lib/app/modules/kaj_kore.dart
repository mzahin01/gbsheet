import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CopyBilai extends StatefulWidget {
  const CopyBilai({super.key});

  @override
  State<CopyBilai> createState() => _CopyBilaiState();
}

class _CopyBilaiState extends State<CopyBilai> {
  void _onRiveInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(
      artboard,
      'State Machine 1',
    );
    artboard.addController(controller!);
  }

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
              onInit: _onRiveInit,
            ),
          ),
        ],
      ),
    );
  }
}
