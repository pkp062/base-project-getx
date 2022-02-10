
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:watch_center/controller/splash_controller.dart';
import 'package:watch_center/utils/app_constants.dart';
import 'package:watch_center/utils/color_constants.dart';
import 'package:watch_center/utils/dimensions.dart';
import 'package:watch_center/utils/image_paths.dart';

class SplashScreen extends StatelessWidget {
  final SplashController _splashControllerController =
  Get.put(SplashController());

  SplashScreen({Key? key}) : super(key: key);

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
             Text(
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
