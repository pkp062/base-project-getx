import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:contact_scan/route/app_pages.dart';
import 'package:contact_scan/utils/app_dimensions.dart';
import 'package:contact_scan/utils/storage_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_constants.dart';
import 'color_constants.dart';

class Utility {
  static Future<bool> isConnected() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      if (kDebugMode) {
        print('Internet mode : mobile');
      }
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      if (kDebugMode) {
        print('Internet mode : wifi');
      }
      return true;
    }
    return false;
  }

  static Widget? hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    return null;
  }

  static Future<String> getUserAPIKey() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userAPIKey = prefs.getString(AppConstants.apiKey);
    return userAPIKey!;
  }

  void snackBar(String msg, BuildContext context) {
    var snackBar = SnackBar(
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static Widget buildProgressIndicator() {
    return Container(
      height: screenHeight,
      color: AppColors.black.withOpacity(0.4),
      child: Center(
        child: CircularProgressIndicator(
          backgroundColor: AppColors.blue,
          valueColor: new AlwaysStoppedAnimation<Color>(AppColors.white),
        ),
      ),
    );
  }

  static void getSessionExpiredDialog() {
    Platform.isAndroid
        ? Get.dialog(
            AlertDialog(
              title: Text(AppConstants.sessionExpired),
              actions: [
                TextButton(
                  child: Text(AppConstants.ok),
                  onPressed: () {
                    Get.back();
                    StorageService().clearAllData();
                    Get.offNamedUntil(Routes.auth, (route) => false);
                  },
                ),
              ],
            ),
            barrierDismissible: false,
          )
        : Get.dialog(
            CupertinoAlertDialog(
              title: Text(AppConstants.sessionExpired),
              actions: [
                CupertinoDialogAction(
                  child: Text(AppConstants.ok),
                  onPressed: () {
                    Get.back();
                    StorageService().clearAllData();
                    Get.offNamedUntil(Routes.auth, (route) => false);
                  },
                )
              ],
            ),
            barrierDismissible: false,
          );
  }
}
