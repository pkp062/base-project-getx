import 'package:contact_scan/ui/screens/splash/splash_controller.dart';
import 'package:contact_scan/utils/app_constants.dart';
import 'package:contact_scan/utils/app_dimensions.dart';
import 'package:contact_scan/utils/app_fonts.dart';
import 'package:contact_scan/utils/image_paths.dart';
import 'package:contact_scan/utils/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  final SplashController _splashControllerController =
      Get.put(SplashController());

  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: screenHeight,
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UiUtils().gapWidget(height: screenWidth / 4),
            Image.asset(
              ImagePath.splashLogo,
              height: screenHeight / 10,
            ),
            UiUtils().gapWidget(
              height: screenWidth / 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppConstants.appName,
                  style: AppFonts.appNameSplash,
                ),
                UiUtils().gapWidget(height: padding_24),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: screenHeight / 4,
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          ImagePath.splashBadge,
                        ),
                      ),
                      Positioned(
                        right: 12,
                        top: 45,
                        child: SvgPicture.asset(
                          ImagePath.splashQR,
                          width: screenWidth / 8,
                          height: screenWidth / 8,
                        ),
                      )
                    ],
                  ),
                ),
                UiUtils().gapWidget(
                  height: screenWidth / 12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
