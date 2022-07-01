import 'package:get/get.dart';
import 'package:eventsquid.quickscan/app/services/storage_service.dart';

class DependencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
  }
}
