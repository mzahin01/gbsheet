import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/another_page_controller.dart';

class AnotherPageView extends GetView<AnotherPageController> {
  const AnotherPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnotherPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AnotherPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
