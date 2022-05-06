import 'package:contact_scan/utils/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../route/app_pages.dart';
import '../../utils/app_dimensions.dart';
import '../../utils/image_paths.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: getAppBarUI(context));
  }

  Widget getAppBarUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.event),
                color: AppColors.black,
               iconSize : screenWidth / 14,
                onPressed: () {},
              ),
            ],
          ),
          Image.asset(
            ImagePath.eventSquidLogoNoTag,
            width: screenWidth / 2.7,
          ),
          Row(
            children: [
              Visibility(
                visible: Get.currentRoute != Routes.home,
                child: GestureDetector(
                  onTap: () {
                    // Get.delete<SearchScreenController>();
                    Get.offNamedUntil(Routes.home, (route) => false);
                  },
                  child: SvgPicture.asset(
                    ImagePath.toolbarQR,
                    height: screenHeight / 32,
                  ),
                ),
              ),
              Visibility(
                visible: Get.currentRoute != Routes.search,
                child: SizedBox(
                  width: screenWidth / 16,
                ),
              ),
              Visibility(
                visible: Get.currentRoute != Routes.search,
                child: GestureDetector(
                  onTap: () {
                    if (Get.currentRoute.contains('home')) {
                      debugPrint("----------------if-----------------" +
                          Get.currentRoute);
                      Get.toNamed(Routes.search);
                    } else {
                      debugPrint("-----------------else----------------" +
                          Get.currentRoute);
                      // _searchScreenController.attendeeSearchResult = [];
                      Get.offNamed(Routes.search);
                    }
                  },
                  child: Icon(
                    Icons.list_alt_outlined,
                    color: AppColors.black,
                    size: screenWidth / 14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
