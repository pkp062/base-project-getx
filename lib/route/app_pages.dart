import 'package:contact_scan/ui/screens/auth/event_auth.dart';
import 'package:contact_scan/ui/screens/eventChange/event_change_dialog_screen.dart';
import 'package:contact_scan/ui/screens/scanScreen/scan_screen.dart';
import 'package:contact_scan/ui/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

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
        transition: Transition.downToUp),
    GetPage(
        name: Routes.home,
        page: () => ScanScreen(),
        transition: Transition.downToUp),
    GetPage(
        name: Routes.changeEventDialog,
        page: () => EventChangeDialogScreen(),
        transition: Transition.downToUp),
  ];
}
