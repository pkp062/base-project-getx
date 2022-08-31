import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:eventsquid.quickscan/app/model/event_auth_model.dart';
import 'package:eventsquid.quickscan/app/model/event_list_model.dart';
import 'package:eventsquid.quickscan/app/services/remote_services.dart';
import 'package:eventsquid.quickscan/app/utils/app_constants.dart';
import 'package:eventsquid.quickscan/app/utils/utility.dart';

import '../../../controller/base_controller.dart';

class EventAuthController extends BaseController {
  final formKey = GlobalKey<FormState>();
  var hostNameList = [].obs;
  List<EventListModel> modelList = <EventListModel>[].obs;
  late EventAuthModel eventAuthModel;
  late TextEditingController eventIdController;
  late TextEditingController authCodeController;
  var dropDownValue = "".obs;
  var isFromDrawer = "";
  late BuildContext context;
  var _storeEventData;
  var _eventID = "";
  var _authCode = "";
  var _dropdownValue = "";

  @override
  void onInit() {
    _storeEventData = Get.find<SharedPreferences>();
    Utility.isConnected().then((internet) {
      if (internet) {
        if (isFromDrawer.toString() != "true") {
          fetchEventHosts();
        } else {}
      }
    });
    getSavedData();
    eventIdController = TextEditingController();
    authCodeController = TextEditingController();
    eventAuthModel = EventAuthModel();
    isFromDrawer = Get.parameters['isFromDrawer'].toString();
    if (isFromDrawer == "true") {
      eventIdController.text = _eventID;
      authCodeController.text = _authCode;
    } else {
      eventIdController.text = "";
      authCodeController.text = "";
    }
    super.onInit();
  }

  void validate() {
    final isValid = formKey.currentState!.validate();
    Get.focusScope!.unfocus();

    if (isValid) {
      fetchAuthoriseApi();
    }
  }

  void fetchEventHosts() async {
    try {
      isLoading(true);
      var events = await Webservice.fetchEventHosts();
      if (events != null) {
        for (int i = 0; i < events.length; i++) {
          modelList.add(EventListModel(
              hostID: events[i]["hostID"],
              hostName: events[i]["hostName"],
              apiEndpoint: events[i]["apiEndpoint"]));
        }
        for (int i = 0; i < modelList.length; i++) {
          hostNameList.add(modelList[i].hostName);
        }
        dropDownValue.value = hostNameList.first;
      }
    } finally {
      isLoading(false);
    }
  }

  fetchAuthoriseApi() async {
    isLoading(true);
    final queryParameter = {
      "eventID": eventIdController.value.text.toString(),
      "authCode": authCodeController.value.text.toString()
    };
    final jsonString = json.encode(queryParameter);
    debugPrint("-----authCredentialsMap--------" + queryParameter.toString());
    Webservice().loadPost(authoriseUsers, jsonString).then(
          (model) => {},
        );
  }

  Resource<EventAuthModel> get authoriseUsers {
    return Resource(
        url: "https://www." +
            // dropDownValue.value.toString().toLowerCase() +
            "eventsquid.com/api/v2/public/authenticate",
        parse: (response) {
          final result = json.decode(response.body);
          debugPrint("https://www." +
              dropDownValue.value.toString().toLowerCase() +
              AppConstants.authApiEndPoint +
              AppConstants.authenticate);
          debugPrint(".......eventAuthorise........" + result.toString());
          bool success = result["success"];
          if (success) {
            isLoading(false);
            EventAuthModel model =
                EventAuthModel.fromJson(json.decode(response.body));
            eventAuthModel = model;
            saveInPref();
            // Get.offAndToNamed(Routes.instructions);
            return eventAuthModel;
          } else {
            isLoading(false);
            Get.snackbar(
              AppConstants.somethingWentWrong,
              AppConstants.userAuthFailed,
              snackPosition: SnackPosition.BOTTOM,
            );
            return EventAuthModel();
          }
        });
  }

  saveInPref() async {
    var date = DateTime.now();
    debugPrint('---------------------' + date.toIso8601String());
    await _storeEventData.setString(
        AppConstants.currentTime, date.toIso8601String());

    await _storeEventData.setString(
        AppConstants.apiKey, eventAuthModel.apiKey.toString());

    String modelString = jsonEncode(eventAuthModel);
    await _storeEventData.setString(AppConstants.eventAuthData, modelString);

    await _storeEventData.setString(
        AppConstants.eventAuthID, eventIdController.value.text.toString());

    await _storeEventData.setString(AppConstants.eventAuthPassword,
        authCodeController.value.text.toString());

    await _storeEventData.setString(
        AppConstants.dropdownValue, dropDownValue.value.toString());

    await _storeEventData.setBool(AppConstants.showInstruction, true);
  }

  getSavedData() async {
    if (_storeEventData.getString(AppConstants.eventAuthID) != null &&
        _storeEventData.getString(AppConstants.eventAuthPassword) != null) {
      _eventID = await _storeEventData.getString(AppConstants.eventAuthID);
      _authCode =
          await _storeEventData.getString(AppConstants.eventAuthPassword);
      _dropdownValue =
          await _storeEventData.getString(AppConstants.dropdownValue);
      eventIdController.text = _eventID;
      authCodeController.text = _authCode;
      dropDownValue.value = _dropdownValue;
    }
  }
}
