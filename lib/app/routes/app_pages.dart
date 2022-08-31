import 'package:get/get.dart';
import 'package:eventsquid.quickscan/app/modules/splash/bindings/splash_binding.dart';
import 'package:eventsquid.quickscan/app/modules/splash/views/splash_screen.dart';

import '../modules/auth/bindings/event_auth_bindings.dart';
import '../modules/auth/views/event_auth.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
        name: _Paths.SPLASH,
        page: () => SplashScreen(),
        binding: SplashBinding(),
        transition: Transition.downToUp),
    GetPage(
        name: _Paths.AUTH,
        page: () => const EventAuth(),
        binding: EventAuthBinding(),
        transition: Transition.downToUp
        /*children: [
        GetPage(name: Routes.REGISTER, page: () => RegisterScreen()),
        GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
      ],*/
        ),
  ];
}
