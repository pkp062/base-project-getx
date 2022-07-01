import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/app_constants.dart';

class StorageService extends GetxService {
  Future<SharedPreferences> init() async {
    return await SharedPreferences.getInstance();
  }

  Future<void> clearApi() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(AppConstants.apiKey);
  }

  Future<void> clearEventData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(AppConstants.eventAuthData);
  }

  Future<void> clearEventCred() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(AppConstants.eventAuthID);
    preferences.remove(AppConstants.eventAuthPassword);
  }

  Future<void> clearAllData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }

  Future<void> clearScope() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(AppConstants.scopeName);
    preferences.remove(AppConstants.selectedIndex);
    preferences.remove(AppConstants.isEventCheck);
    preferences.remove(AppConstants.isAttendeeCheck);
    preferences.remove(AppConstants.itemCategory);
    preferences.remove(AppConstants.disableDecrementing);
    preferences.remove(AppConstants.eventFeeID);
  }
}
