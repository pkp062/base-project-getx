import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:eventsquid.quickscan/app/modules/auth/controllers/event_auth_controller.dart';
import 'package:eventsquid.quickscan/app/style/color_constants.dart';
import 'package:eventsquid.quickscan/app/style/dimensions.dart';
import 'package:eventsquid.quickscan/app/utils/app_constants.dart';
import 'package:eventsquid.quickscan/app/utils/utility.dart';
import 'package:eventsquid.quickscan/app/widgets/app_bar_simple.dart';
import 'package:eventsquid.quickscan/app/widgets/rounded_button.dart';
import 'package:eventsquid.quickscan/app/widgets/text_field.dart';

class EventAuth extends GetView<EventAuthController> {
  const EventAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Stack(
          children: [
            Container(
              color: Colors.white,
              child: SafeArea(
                bottom: false,
                child: GestureDetector(
                  onTap: () {
                    Utility.hideKeyboard(context);
                  },
                  child: Scaffold(
                    backgroundColor: Colors.white,
                    body: SingleChildScrollView(
                      child: Form(
                        key: controller.formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            controller.isFromDrawer == "true"
                                ? AppBarSimple()
                                : const SizedBox(
                                    height: 10,
                                  ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 28, vertical: 14),
                              child: Text(
                                AppConstants.selectEventHost,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: ColorConstants.black53,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24.0),
                              child: controller.isFromDrawer == "true"
                                  ? Container(
                                      width: Dimensions.screenWidth,
                                      height: Dimensions.screenHeight / 20,
                                      decoration: const BoxDecoration(
                                          color: ColorConstants.gray949599,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16.0, right: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              controller.dropDownValue.value,
                                              style: TextStyle(
                                                  fontSize:
                                                      Dimensions.screenHeight /
                                                          50,
                                                  color: ColorConstants.white,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down,
                                              color: ColorConstants.white,
                                              size:
                                                  Dimensions.screenHeight / 25,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : controller.hostNameList.isNotEmpty
                                      ? Container(
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                              color: ColorConstants.gray949599,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8))),
                                          child: Listener(
                                            onPointerDown: (_) =>
                                                FocusScope.of(context)
                                                    .unfocus(),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton2<String>(
                                                isExpanded: true,
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color: ColorConstants.white,
                                                  size:
                                                      Dimensions.screenHeight /
                                                          18,
                                                ),
                                                value: controller.dropDownValue
                                                            .value !=
                                                        ""
                                                    ? controller
                                                        .dropDownValue.value
                                                    : controller
                                                        .hostNameList[0],
                                                selectedItemBuilder:
                                                    (BuildContext context) {
                                                  return controller.hostNameList
                                                      .map((value) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 16),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional
                                                                .centerStart,
                                                        child: Text(
                                                          controller
                                                              .dropDownValue
                                                              .value,
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                      ),
                                                    );
                                                  }).toList();
                                                },
                                                items: controller.hostNameList
                                                    .map<
                                                        DropdownMenuItem<
                                                            String>>((value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 16.0,
                                                              right: 6),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            value,
                                                            style: TextStyle(
                                                                fontSize: Dimensions
                                                                        .screenHeight /
                                                                    50,
                                                                color:
                                                                    ColorConstants
                                                                        .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                }).toList(),
                                                onChanged: controller
                                                            .isFromDrawer ==
                                                        "true"
                                                    ? null
                                                    : (value) {
                                                        controller.dropDownValue
                                                                .value =
                                                            value.toString();
                                                      },
                                              ),
                                            ),
                                          ),
                                        )
                                      : Container(),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 28, right: 28, top: 28, bottom: 8),
                              child: Text(
                                AppConstants.eventIdentification,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorConstants.black53,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 28, vertical: 4),
                              child: Column(
                                children: [
                                  const Text(
                                    AppConstants.eventIdDesc,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ColorConstants.gray949599,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: Dimensions.screenWidth / 22,
                                  ),
                                  TextFieldWidget(
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(10),
                                    ],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    enabled: controller.isFromDrawer == "true"
                                        ? false
                                        : true,
                                    inputType: TextInputType.text,
                                    controller: controller.eventIdController,
                                    isObscureText: false,
                                    hintText: AppConstants.eventIdHint,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return AppConstants.emptyValueEventId;
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  TextFieldWidget(
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(10),
                                    ],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    enabled: controller.isFromDrawer == "true"
                                        ? false
                                        : true,
                                    inputType: TextInputType.visiblePassword,
                                    controller: controller.authCodeController,
                                    isObscureText: true,
                                    hintText: AppConstants.eventCodeHint,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return AppConstants
                                            .emptyValueAuthorizationCode;
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: Dimensions.screenWidth / 4,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Utility.hideKeyboard(context);
                                      /*         _eventAuthController.isFromDrawer ==
                                              "true"
                                          ? Get.offNamed(
                                              Routes.changeEventDialog)
                                          : _eventAuthController.validate();*/
                                    },
                                    child: controller.isFromDrawer == "true"
                                        ? RoundedButton(
                                            color: ColorConstants.red,
                                            buttonName:
                                                AppConstants.changeEvent)
                                        : RoundedButton(
                                            color: ColorConstants.black44,
                                            buttonName: AppConstants.authorize),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            controller.isLoading.value
                ? Utility.buildProgressIndicator()
                : Container()
          ],
        );
      },
    );
  }
}
