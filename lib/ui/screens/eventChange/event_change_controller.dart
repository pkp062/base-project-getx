import 'package:contact_scan/ui/components/base_controller.dart';
import 'package:contact_scan/utils/storage_service.dart';

class EventChangeController extends BaseController {
  void clearAllPreference() {
    StorageService().clearAllData();
  }
}
