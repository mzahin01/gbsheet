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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                child: const Text('AppArena1')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.MACOS_ARENA);
                },
                child: const Text('MacOSArena')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.APP2);
                },
                child: const Text('AppArena2')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.KAJ_KORE);
                },
                child: const Text('Kaj Kore')),
          ],
        ),
      ),
    );
  }
}
