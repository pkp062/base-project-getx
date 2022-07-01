import 'dart:async';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:eventsquid.quickscan/app/routes/app_pages.dart';
import 'package:eventsquid.quickscan/app/services/storage_service.dart';
import 'package:eventsquid.quickscan/app/style/dimensions.dart';
import 'package:eventsquid.quickscan/app/utils/app_constants.dart';

import '../../../controller/base_controller.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    splashTimer();
    StorageService().clearScope();
    super.onInit();
  }

  void splashTimer() async {
    var _duration = Duration(
      seconds: Dimensions.screenLoadTime,
    );
    Timer(_duration, () async {
      var storage = Get.find<SharedPreferences>();
      try {
        if (storage.getString(AppConstants.eventAuthData) != null) {
          Get.offNamedUntil(Routes.HOME, (route) => false);
        } else {
          Get.offNamedUntil(Routes.AUTH, (route) => false);
        }
      } catch (e) {
        Get.offNamedUntil(Routes.AUTH, (route) => false);
      }
    });
  }
}
