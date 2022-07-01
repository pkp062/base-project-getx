import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../model/event_list_model.dart';
import '../utils/app_constants.dart';
import '../utils/utility.dart';

class Resource<T> {
  final String? url;
  T Function(Response response)? parse;

  Resource({this.url, this.parse});
}

class Webservice {
  static var client = http.Client();
  var tag = "Webservice----";

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

  Future<T> loadPostWithoutParam<T>(Resource<T> resource) async {
    final response = await http.post(Uri.parse(resource.url!));
    if (kDebugMode) {
      print("response........................." + response.toString());
    }
    if (response.statusCode == 200) {
      return resource.parse!(response);
    } else {
      throw Exception('Failed to load data!');
    }
  }

  Future<T> loadGetWithoutParam<T>(Resource<T> resource) async {
    final response = await http.get(Uri.parse(resource.url!));
    if (kDebugMode) {
      print("response........................." + response.toString());
    }
    if (response.statusCode == 200) {
      return resource.parse!(response);
    } else {
      throw Exception('Failed to load data!');
    }
  }

  Future<T> loadGetWithHeader<T>(Resource<T> resource) async {
    String token = await Utility.getUserAPIKey();
    Map<String, String> headers = {"Authorization": token};
    final response = await http.get(Uri.parse(resource.url!), headers: headers);
    if (kDebugMode) {
      print("response........................." + response.toString());
    }
    if (response.statusCode == 200) {
      return resource.parse!(response);
    } else {
      throw Exception('Failed to load data!');
    }
  }

  Future<T> loadGetParam<T>(Resource<T> resource) async {
    final response = await http.get(Uri.parse(resource.url!));
    if (kDebugMode) {
      print("response........................." + response.toString());
    }
    if (response.statusCode == 200) {
      return resource.parse!(response);
    } else {
      throw Exception('Failed to load data!');
    }
  }

  Future<T> loadPost<T>(Resource<T> resource, Object body) async {
    final response = await http.post(Uri.parse(resource.url!), body: body);
    if (kDebugMode) {
      print("response........................." + response.toString());
    }
    if (response.statusCode == 200) {
      return resource.parse!(response);
    } else {
      throw Exception('Failed to load data!');
    }
  }

  Future<T> loadPostHeaderData<T>(Resource<T> resource, Map body) async {
    final response = await http.post(Uri.parse(resource.url!),
        headers: {
          "content-type": "application/json/multipart/form-data",
          "accept": "application/json",
        },
        body: body);
    if (kDebugMode) {
      print("response........................." + response.toString());
    }
    if (response.statusCode == 200) {
      return resource.parse!(response);
    } else {
      throw Exception('Failed to load data!');
    }
  }

  Future<T> loadPostJsonData<T>(Resource<T> resource, Object body) async {
    final response = await http.post(Uri.parse(resource.url!),
        headers: {
          "content-type": "application/json",
          "accept": "application/json",
        },
        body: body);
    if (kDebugMode) {
      print("response........................." + response.toString());
    }
    if (response.statusCode == 200) {
      return resource.parse!(response);
    } else {
      return resource.parse!(response);
    }
  }

  Future<T> loadPostWithHeaderKey<T>(Resource<T> resource, Object body) async {
    String token = await Utility.getUserAPIKey();
    Map<String, String> headers = {"Authorization": token};
    final response =
        await http.post(Uri.parse(resource.url!), headers: headers, body: body);
    if (kDebugMode) {
      print("response........................." + response.toString());
    }
    if (response.statusCode == 200) {
      return resource.parse!(response);
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
