import 'package:flutter/material.dart';
import 'package:gbsheet/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.WEB_PAGE_ARENA);
                },
                child: const Text('WebpageArena')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.APP_ARENA);
                },
                child: const Text('AppArena')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.MACOS_ARENA);
                },
                child: const Text('MacOSArena')),
          ],
        ),
      ),
    );
  }
}
