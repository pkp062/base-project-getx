import 'dart:async';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:watch_center/route/app_pages.dart';
import 'package:watch_center/utils/app_constants.dart';
import 'package:watch_center/utils/dimensions.dart';
import 'package:watch_center/utils/storage_service.dart';

import 'base_controller.dart';

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
      if (storage.getString(AppConstants.eventAuthData)!=null) {
        Get.offNamedUntil(Routes.home, (route) => false);
      } else {
        Get.offNamedUntil(Routes.auth, (route) => false);
      }
    } catch (e) {
      Get.offNamedUntil(Routes.auth, (route) => false);
    }
    });


  }
}
