import 'dart:async';

import 'package:contact_scan/utils/app_dimensions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../components/base_controller.dart';
import '../../../route/app_pages.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/storage_service.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    super.onInit();
    StorageService().clearScope();
    splashTimer();
  }

  void splashTimer() async {
    var _duration = const Duration(
      seconds: screenLoadTime,
    );
    Timer(_duration, () async {
      var storage = Get.find<SharedPreferences>();
      try {
        if (storage.getString(AppConstants.eventAuthData) != null) {
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
