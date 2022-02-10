import 'package:get/get.dart';
import 'package:watch_center/utils/storage_service.dart';

class DependencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
  }
}
