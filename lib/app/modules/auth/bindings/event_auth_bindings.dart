import 'package:get/get.dart';
import 'package:eventsquid.quickscan/app/modules/auth/controllers/event_auth_controller.dart';

class EventAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventAuthController>(
      () => EventAuthController(),
    );
  }
}
