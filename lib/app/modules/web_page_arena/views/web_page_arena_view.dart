import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/web_page_arena_controller.dart';

class WebPageArenaView extends GetView<WebPageArenaController> {
  const WebPageArenaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebPageArenaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WebPageArenaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
