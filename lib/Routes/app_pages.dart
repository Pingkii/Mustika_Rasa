import 'package:get/get.dart';

import '../Screen/Home/view/home.dart';
import '../Screen/Home/bindings/home_binding.dart';
import '../Screen/splash_screen/views/splash_screen_view.dart';
import '../Screen/splash_screen/bindings/splash_screen_binding.dart';
import '../Screen/Onboard/onboard_view/ScreenWelcome.dart';
import '../Screen/Onboard/onboard_binding/onboard_binding.dart';
import '../Screen/bottomnavigation/bindings/bottomnavigation_binding.dart';
import '../Screen/bottomnavigation/views/bottomnavigation_view.dart';
import '../Screen/Artikel/bindings/artikel_binding.dart';
import '../Screen/Artikel/view/Artikel.dart';
import '../Screen/Resep/bindings/resep_binding.dart';
import '../Screen/Resep/view/resep.dart';
import '../Screen/Ad_slide/bindings/ad_binding.dart';
import '../Screen/Ad_slide/view/ad_slide.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAVIGATION,
      page: () => const BottomnavigationPage(),
      binding: BottomnavigationBinding(),
    ),
    GetPage(
      name: _Paths.RESEP,
      page: () => const ResepPage(),
      binding: ResepBinding(),
    ),
    GetPage(
      name: _Paths.ARTIKEL,
      page: () => const ArtikelPage(),
      binding: ArtikelBinding(),
    ),
    GetPage(
      name: Routes.AD_SLIDE,
      page: () => AdSlider(),
      binding: AdBinding(),
    ),
  ];
}
