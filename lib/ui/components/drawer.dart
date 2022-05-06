// import 'dart:io';
//
// import 'package:eventsquid/controller/custom_drawer_controller.dart';
// import 'package:eventsquid/route/app_pages.dart';
// import 'package:eventsquid/ui/screens/change_scope_mode.dart';
// import 'package:eventsquid/ui/screens/check_in_stats.dart';
// import 'package:eventsquid/ui/screens/instructions.dart';
// import 'package:eventsquid/utils/app_constants.dart';
// import 'package:eventsquid/utils/color_constants.dart';
// import 'package:eventsquid/utils/dimensions.dart';
// import 'package:eventsquid/utils/image_paths.dart';
// import 'package:eventsquid/utils/text_styles.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
//
// class CustomDrawer extends StatelessWidget {
//   CustomDrawer({Key? key}) : super(key: key);
//
//   final CustomDrawerController _drawerController =
//       Get.put(CustomDrawerController());
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width * 0.80,
//       child: Drawer(
//         backgroundColor: ColorConstants.white,
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             SizedBox(height: Dimensions.screenHeight / 15,),
//             InkWell(
//               onTap: () {
//                 Get.back();
//                 Get.toNamed(Routes.instructions);
//               },
//               child: Padding(
//                 padding: EdgeInsets.all(Dimensions.screenWidth / 22),
//                 child: Container(
//                   child: Row(
//                     children: [
//                       Container(
//                         width: Dimensions.screenWidth / 20,
//                         child: SvgPicture.asset(
//                           ImagePath.file,
//                           height: Dimensions.screenHeight / 38,
//                         ),
//                       ),
//                       SizedBox(
//                         width: Dimensions.screenWidth / 20,
//                       ),
//                       Text(
//                         AppConstants.instructions,
//                         style: TextStyle(
//                           color: ColorConstants.black,
//                           fontWeight: FontWeight.w500,
//                           fontSize: Dimensions.screenWidth / 26,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             const Divider(
//               height: 1,
//               color: ColorConstants.gray70,
//               thickness: 1,
//             ),
//             InkWell(
//               onTap: () {
//                 Get.back();
//                 Get.toNamed(Routes.changeScopeMode);
//               },
//               child: Padding(
//                 padding: EdgeInsets.all(Dimensions.screenWidth / 22),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: Dimensions.screenWidth / 20,
//                       child: SvgPicture.asset(
//                         ImagePath.qrCode,
//                         height: Dimensions.screenHeight / 38,
//                       ),
//                     ),
//                     SizedBox(
//                       width: Dimensions.screenWidth / 20,
//                     ),
//                     Text(
//                       AppConstants.changeScanScopeMode,
//                       style: TextStyle(
//                         color: ColorConstants.black,
//                         fontWeight: FontWeight.w500,
//                         fontSize: Dimensions.screenWidth / 26,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const Divider(
//               height: 1,
//               color: ColorConstants.gray70,
//               thickness: 1,
//             ),
//           //Todo in next phase
//             InkWell(
//               onTap: () {
//                 Get.back();
//                 Get.toNamed(Routes.checkInStats);
//               },
//               child: Padding(
//                 padding: EdgeInsets.all(Dimensions.screenWidth / 22),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: Dimensions.screenWidth / 20,
//                       child: SvgPicture.asset(
//                         ImagePath.stats,
//                         height: Dimensions.screenHeight / 38,
//                       ),
//                     ),
//                     SizedBox(
//                       width: Dimensions.screenWidth / 20,
//                     ),
//                     Text(
//                       AppConstants.checkInStats,
//                       style: TextStyle(
//                         color: ColorConstants.black,
//                         fontWeight: FontWeight.w500,
//                         fontSize: Dimensions.screenWidth / 26,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const Divider(
//               height: 1,
//               color: ColorConstants.gray70,
//               thickness: 1,
//             ),
//             InkWell(
//               onTap: () {
//                 Get.back();
//                 _drawerController.isFromDrawer.value = true;
//                 Get.toNamed(Routes.auth, parameters: {"isFromDrawer": "true"});
//               },
//               child: Padding(
//                 padding: EdgeInsets.all(Dimensions.screenWidth / 22),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: Dimensions.screenWidth / 20,
//                       child: SvgPicture.asset(
//                         ImagePath.event,
//                         height: Dimensions.screenHeight / 38,
//                       ),
//                     ),
//                     SizedBox(
//                       width: Dimensions.screenWidth / 20,
//                     ),
//                     Text(
//                       AppConstants.newEvent,
//                       style: TextStyle(
//                         color: ColorConstants.black,
//                         fontWeight: FontWeight.w500,
//                         fontSize: Dimensions.screenWidth / 26,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const Divider(
//               height: 1,
//               color: ColorConstants.gray70,
//               thickness: 1,
//             ),
//             SizedBox(
//               height: Dimensions.screenHeight / 20,
//             ),
//             InkWell(
//               onTap: (){
//                 Get.back();
//                 _drawerController.fetchAuthoriseApi();
//               },
//               child: Padding(
//                 padding: EdgeInsets.only(
//                     left: Dimensions.screenWidth / 10,
//                     right: Dimensions.screenWidth / 10),
//                 child: Container(
//                   width: Dimensions.screenWidth,
//                   height: Dimensions.screenHeight / 18,
//                   decoration: const BoxDecoration(
//                       color: ColorConstants.green13,
//                       borderRadius: BorderRadius.all(Radius.circular(24))),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.refresh,
//                         color: ColorConstants.white,
//                         size: Dimensions.screenHeight / 30,
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Text(
//                         AppConstants.refreshEventData,
//                         style: TextStyle(
//                             fontSize: Dimensions.screenWidth / 28,
//                             color: ColorConstants.white,
//                             fontWeight: FontWeight.w500),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
