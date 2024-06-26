import 'package:get/get.dart';

import '../modules/app2/bindings/app2_binding.dart';
import '../modules/app2/views/app2_view.dart';
import '../modules/app_arena/bindings/app_arena_binding.dart';
import '../modules/app_arena/views/app_arena_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/macos_arena/bindings/macos_arena_binding.dart';
import '../modules/macos_arena/views/macos_arena_view.dart';
import '../modules/web_page_arena/bindings/web_page_arena_binding.dart';
import '../modules/web_page_arena/views/web_page_arena_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WEB_PAGE_ARENA,
      page: () => const WebPageArenaView(),
      binding: WebPageArenaBinding(),
    ),
    GetPage(
      name: _Paths.APP_ARENA,
      page: () => const AppArenaView(),
      binding: AppArenaBinding(),
    ),
    GetPage(
      name: _Paths.MACOS_ARENA,
      page: () => const MacosArenaView(),
      binding: MacosArenaBinding(),
    ),
    GetPage(
      name: _Paths.APP2,
      page: () => const App2View(),
      binding: App2Binding(),
    ),
  ];
}
