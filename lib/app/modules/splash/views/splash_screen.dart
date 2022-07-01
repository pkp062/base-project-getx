import 'package:eventsquid.quickscan/app/modules/splash/controllers/splash_controller.dart';
import 'package:eventsquid.quickscan/app/style/color_constants.dart';
import 'package:eventsquid.quickscan/app/style/dimensions.dart';
import 'package:eventsquid.quickscan/app/utils/app_constants.dart';
import 'package:eventsquid.quickscan/app/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController _controller = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    Dimensions.screenWidth = MediaQuery.of(context).size.width;
    Dimensions.screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: ColorConstants.white,
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.splashLogo,
              height: Dimensions.screenHeight / 10,
            ),
            SizedBox(
              height: Dimensions.screenWidth / 10,
            ),
            const Text(
              AppConstants.scanningApp,
              style: TextStyle(
                  fontSize: Dimensions.fontSize26, fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                ImagePath.splashQR,
                width: Dimensions.screenHeight / 2,
                height: Dimensions.screenHeight / 3,
              ),
            ),
            SizedBox(
              height: Dimensions.screenWidth / 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  AppConstants.alsoWorksWith,
                  style: TextStyle(
                      fontSize: Dimensions.fontSizeDefault,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.screenWidth / 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  ImagePath.launchSquid,
                  width: Dimensions.screenHeight / 6,
                  height: Dimensions.screenHeight / 12,
                ),
                Image.asset(
                  ImagePath.inreach,
                  width: Dimensions.screenHeight / 6,
                  height: Dimensions.screenHeight / 12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
