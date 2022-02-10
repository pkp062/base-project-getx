import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:watch_center/model/event_auth_model.dart';
import 'package:watch_center/network/webservice.dart';
import 'package:watch_center/utils/app_constants.dart';
import 'package:watch_center/utils/color_constants.dart';
import 'package:watch_center/utils/dimensions.dart';

import 'base_controller.dart';

class CustomDrawerController extends BaseController {
  var isFromDrawer = false.obs;
  late EventAuthModel eventAuthModel;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  var _preference;
  var eventID = "";
  var authKey = "";

  @override
  void onInit() {
    super.onInit();
    _preference = Get.find<SharedPreferences>();
    setPrefData();
    getSavedData();
  }

  setPrefData() async {
    _preference.setBool(AppConstants.showInstruction, false);
  }

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  fetchAuthoriseApi() async {
    isLoading(true);
    final queryParameter = {"eventID": eventID, "authCode": authKey};
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
          debugPrint(".......eventAuthorise........" + result.toString());
          isLoading(false);
          if (result.toString().contains("success")) {
            bool success = result["success"];
            if (success) {
              EventAuthModel model =
                  EventAuthModel.fromJson(json.decode(response.body));
              Get.defaultDialog(
                  titleStyle: const TextStyle(fontSize: 0),
                  barrierDismissible: false,
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppConstants.dataRefreshed,
                          style: TextStyle(
                              fontSize: Dimensions.screenHeight / 40,
                              color: ColorConstants.black53,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: Dimensions.screenHeight / 30,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.back();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: Dimensions.screenWidth / 10,
                                right: Dimensions.screenWidth / 10),
                            child: Container(
                              width: Dimensions.screenWidth / 4,
                              height: Dimensions.screenHeight / 18,
                              decoration: const BoxDecoration(
                                  color: ColorConstants.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Center(child: Text(
                                'OK',
                                style: TextStyle(
                                    fontSize: Dimensions.screenHeight / 50,
                                    color: ColorConstants.white,
                                    fontWeight: FontWeight.bold),
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  radius: 10.0);
                      eventAuthModel = model;
              return eventAuthModel;
            } else {
              Get.snackbar(
                AppConstants.somethingWentWrong,
                AppConstants.userAuthFailed,
                snackPosition: SnackPosition.BOTTOM,
              );
              return EventAuthModel();
            }
          } else {
            String msg = result["msg"];
            Get.snackbar(
              AppConstants.somethingWentWrong,
              msg,
              snackPosition: SnackPosition.BOTTOM,
            );
            return EventAuthModel();
          }
        });
  }

  saveInPref() async {
    await _preference.setString(
        AppConstants.apiKey, eventAuthModel.apiKey.toString());

    String modelString = jsonEncode(eventAuthModel);
    await _preference.setString(AppConstants.eventAuthData, modelString);
  }

  getSavedData() async {
    if (_preference.getString(AppConstants.eventAuthID) != null &&
        _preference.getString(AppConstants.eventAuthPassword) != null) {
      eventID = await _preference.getString(AppConstants.eventAuthID);
      authKey = await _preference.getString(AppConstants.eventAuthPassword);
    }
  }
}
