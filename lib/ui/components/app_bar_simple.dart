import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_center/controller/app_bar_controlelr.dart';
import 'package:watch_center/route/app_pages.dart';
import 'package:watch_center/utils/color_constants.dart';

class AppBarSimple extends StatelessWidget implements PreferredSizeWidget {
  AppBarSimple({Key? key}) : super(key: key);

  final AppBarController _appBarController = Get.put(AppBarController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: getAppBarUI(context));
  }

  Widget getAppBarUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 12, end: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () async {
             await _appBarController. getSavedData();
              if (_appBarController.showInstruction) {
                Get.offAndToNamed(Routes.home);
              } else {
                Get.back();
              }
            },
            child: const Icon(
              CupertinoIcons.clear,
              color: ColorConstants.grayB5,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
