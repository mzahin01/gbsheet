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
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.SKILL_MACHINE);
                  },
                  child: const Text('Skill'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.SKILL_MACHINE_GETX);
                  },
                  child: const Text('Skill Getx'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.COPY_BILAI_COPY);
                  },
                  child: const Text('Woking Star'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.ANOTHER_PAGE);
                  },
                  child: const Text('Another Page'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.WEB_PAGE_ARENA);
                  },
                  child: const Text('WebpageArena'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.APP_ARENA);
                  },
                  child: const Text('AppArena1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.MACOS_ARENA);
                  },
                  child: const Text('MacOSArena'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.APP2);
                  },
                  child: const Text('AppArena2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.KAJ_KORE);
                  },
                  child: const Text('Kaj Kore'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
