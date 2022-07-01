import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../utils/app_constants.dart';
import 'base_controller.dart';

class AppBarController extends BaseController {
  var showInstruction;

  @override
  void onInit() {
    super.onInit();
    getSavedData();
  }

  Future<void> getSavedData() async {
     var _preference = Get.find<SharedPreferences>();
    if (_preference.getBool(AppConstants.showInstruction) != null) {
      showInstruction =
          await _preference.getBool(AppConstants.showInstruction);
    }
  }
}
