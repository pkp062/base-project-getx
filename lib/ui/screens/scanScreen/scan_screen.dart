import 'package:contact_scan/ui/components/custom_app_bar.dart';
import 'package:contact_scan/ui/screens/scanScreen/scan_screen_controller.dart';
import 'package:contact_scan/utils/app_constants.dart';
import 'package:contact_scan/utils/app_dimensions.dart';
import 'package:contact_scan/utils/app_fonts.dart';
import 'package:contact_scan/utils/color_constants.dart';
import 'package:contact_scan/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanScreen extends StatelessWidget {
  ScanScreen({Key? key}) : super(key: key);

  final ScanScreenController scanScreenController =
      Get.put(ScanScreenController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(children: [
        Container(
          color: Colors.white,
          child: SafeArea(
              top: false,
              bottom: false,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: CustomAppBar(),
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenWidth,
                            color: AppColors.grayF5,
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                AppConstants.conference,
                                textAlign: TextAlign.center,
                                style: AppFonts.headLineHome,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight / 50,
                      ),
                    ],
                  ),
                ),
              )),
        ),
        scanScreenController.isLoading.value
            ? Utility.buildProgressIndicator()
            : Container()
      ]),
    );
  }

  Widget _buildQrView() {
    return SizedBox(
      width: screenWidth,
      height: screenHeight / 2,
      child: MobileScanner(
          allowDuplicates: false,
          onDetect: (barcode, args) {
            final String? code = barcode.rawValue;
            debugPrint('Barcode found! $code');
            scanScreenController.resultString.value = code!;
            Get.back(result: code);
          }),
    );
  }
}
