import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CopyBilaiCopy extends StatefulWidget {
  const CopyBilaiCopy({super.key});

  @override
  State<CopyBilaiCopy> createState() => _CopyBilaiCopyState();
}

class _CopyBilaiCopyState extends State<CopyBilaiCopy> {
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
            child: SizedBox(
              height: 300,
              width: 300,
              child: RiveAnimation.asset(
                'assets/rive_assets/trial.riv',
                onInit: _onRiveInit,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
