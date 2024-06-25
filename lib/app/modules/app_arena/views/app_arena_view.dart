import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/app_arena_controller.dart';

class AppArenaView extends GetView<AppArenaController> {
  const AppArenaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AppArenaView'),
          centerTitle: true,
        ),
        body: const Stack(
          children: [],
        ));
  }
}
