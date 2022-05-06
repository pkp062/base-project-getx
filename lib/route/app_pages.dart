import 'package:get/get.dart';
import 'package:watch_center/ui/screens/event_auth.dart';
import 'package:watch_center/ui/screens/splash_screen.dart';


part 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
        name: Routes.splash,
        page: () => SplashScreen(),
        transition: Transition.downToUp),
    GetPage(
        name: Routes.auth,
        page: () => EventAuth(),
        transition: Transition.downToUp
        /*children: [
        GetPage(name: Routes.REGISTER, page: () => RegisterScreen()),
        GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
      ],*/
        ),
  ];
}
