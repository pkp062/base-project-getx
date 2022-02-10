import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:watch_center/route/app_pages.dart';
import 'package:watch_center/utils/app_constants.dart';
import 'package:watch_center/utils/color_constants.dart';
import 'package:watch_center/utils/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Helvetica Neue",
        primarySwatch: ColorConstants.appColor,
      ),
      initialRoute: Routes.splash,
      getPages: AppPages.routes,
      title: AppConstants.appName,
    );
  }
}
