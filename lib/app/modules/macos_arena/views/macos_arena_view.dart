import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/macos_arena_controller.dart';

class MacosArenaView extends GetView<MacosArenaController> {
  const MacosArenaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MacosArenaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MacosArenaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
