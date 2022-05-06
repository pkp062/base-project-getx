import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:watch_center/utils/app_constants.dart';

import '../model/event_list_model.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List?> fetchEventHosts() async {
    var response = await client
        .get(Uri.parse(AppConstants.baseApi1 + AppConstants.getEvents));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      List jsonList = json.decode(jsonString) as List;
      List<EventListModel> eventList = [];
      for (int i = 0; i < jsonList.length; i++) {
        eventList.add(EventListModel(
            hostID: jsonList[i]["hostID"],
            hostName: jsonList[i]["hostName"],
            apiEndpoint: jsonList[i]["apiEndpoint"]));
      }
      return jsonList;
    } else {
      //show error message
      return null;
    }
  }
}
