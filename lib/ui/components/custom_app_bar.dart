// import 'package:eventsquid/controller/change_scope_mode_controller.dart';
// import 'package:eventsquid/controller/custom_drawer_controller.dart';
// import 'package:eventsquid/controller/scan_screen_controller.dart';
// import 'package:eventsquid/controller/search_screen_controller.dart';
// import 'package:eventsquid/route/app_pages.dart';
// import 'package:eventsquid/utils/app_constants.dart';
// import 'package:eventsquid/utils/color_constants.dart';
// import 'package:eventsquid/utils/dimensions.dart';
// import 'package:eventsquid/utils/image_paths.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
//
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   CustomAppBar({Key? key}) : super(key: key);
//
//   final CustomDrawerController _sideBarController =
//       Get.put(CustomDrawerController());
//
//   ScanScreenController _scanscreen = Get.find<ScanScreenController>();
//   ChangeScopeModeController changeScopeModeController =
//       Get.find<ChangeScopeModeController>();
//   final SearchScreenController _searchScreenController =
//       Get.put(SearchScreenController());
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: getAppBarUI(context));
//   }
//
//   Widget getAppBarUI(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 24,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               IconButton(
//                 icon: Icon(Icons.menu),
//                 color: ColorConstants.gray62,
//                 iconSize: Dimensions.screenHeight / 25,
//                 onPressed: () {
//                   Scaffold.of(context).openDrawer();
//                   // _sideBarController.openDrawer();
//                 },
//               ),
//             ],
//           ),
//           Image.asset(
//             ImagePath.eventSquidLogoNoTag,
//             width: Dimensions.screenWidth / 2.7,
//           ),
//           Row(
//             children: [
//               Visibility(
//                 visible: Get.currentRoute != Routes.home,
//                 child: GestureDetector(
//                   onTap: () {
//                     Get.delete<SearchScreenController>();
//                     Get.offNamedUntil(Routes.home, (route) => false);
//                   },
//                   child: SvgPicture.asset(
//                     ImagePath.toolbarQR,
//                     height: Dimensions.screenHeight / 32,
//                   ),
//                 ),
//               ),
//               Visibility(
//                 visible: Get.currentRoute != Routes.search,
//                 child: SizedBox(
//                   width: Dimensions.screenWidth / 16,
//                 ),
//               ),
//               Visibility(
//                 visible: Get.currentRoute != Routes.search,
//                 child: GestureDetector(
//                   onTap: () {
//                     if (Get.currentRoute.contains('home')) {
//                       debugPrint("----------------if-----------------" +
//                           Get.currentRoute);
//                       Get.toNamed(Routes.search);
//                     } else {
//                       debugPrint("-----------------else----------------" +
//                           Get.currentRoute);
//                       _searchScreenController.attendeeSearchResult = [];
//                       Get.offNamed(Routes.search);
//                     }
//                   },
//                   child: Icon(
//                     Icons.search,
//                     color: ColorConstants.gray1C,
//                     size: Dimensions.screenHeight / 30,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(80);
// }
