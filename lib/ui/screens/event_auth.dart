import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:watch_center/controller/event_auth_controller.dart';
import 'package:watch_center/route/app_pages.dart';
import 'package:watch_center/ui/components/app_bar_simple.dart';
import 'package:watch_center/ui/components/rounded_button.dart';
import 'package:watch_center/ui/components/text_field.dart';
import 'package:watch_center/utils/app_constants.dart';
import 'package:watch_center/utils/color_constants.dart';
import 'package:watch_center/utils/dimensions.dart';
import 'package:watch_center/utils/utility.dart';

class EventAuth extends StatelessWidget {
  EventAuth({Key? key}) : super(key: key);

  final EventAuthController _eventAuthController =
      Get.put(EventAuthController());

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
                        key: _eventAuthController.formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _eventAuthController.isFromDrawer == "true"
                                ? AppBarSimple()
                                : SizedBox(
                                    height: 10,
                                  ),
                             Padding(
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
                              child: _eventAuthController.isFromDrawer == "true"
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
                                              _eventAuthController
                                                  .dropDownValue.value,
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
                                  : _eventAuthController.hostNameList.length !=
                                          0
                                      ? Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
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
                                                value: _eventAuthController
                                                            .dropDownValue
                                                            .value !=
                                                        ""
                                                    ? _eventAuthController
                                                        .dropDownValue.value
                                                    : _eventAuthController
                                                        .hostNameList[0],
                                                selectedItemBuilder:
                                                    (BuildContext context) {
                                                  return _eventAuthController
                                                      .hostNameList
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
                                                          _eventAuthController
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
                                                items: _eventAuthController
                                                    .hostNameList
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
                                                onChanged: _eventAuthController
                                                            .isFromDrawer ==
                                                        "true"
                                                    ? null
                                                    : (value) {
                                                        _eventAuthController
                                                                .dropDownValue
                                                                .value =
                                                            value.toString();
                                                      },
                                              ),
                                            ),
                                          ),
                                        )
                                      : Container(),
                            ),
                            Padding(
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 28, vertical: 4),
                              child: Column(
                                children: [
                                  Text(
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
                                      new LengthLimitingTextInputFormatter(10),
                                    ],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    enabled:
                                        _eventAuthController.isFromDrawer ==
                                                "true"
                                            ? false
                                            : true,
                                    inputType: TextInputType.text,
                                    controller:
                                        _eventAuthController.eventIdController,
                                    isObscureText: false,
                                    hintText: AppConstants.eventIdHint,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return AppConstants.emptyValueEventId;
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  TextFieldWidget(
                                    inputFormatters: [
                                      new LengthLimitingTextInputFormatter(10),
                                    ],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    enabled:
                                        _eventAuthController.isFromDrawer ==
                                                "true"
                                            ? false
                                            : true,
                                    inputType: TextInputType.visiblePassword,
                                    controller:
                                        _eventAuthController.authCodeController,
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
                                      _eventAuthController.isFromDrawer ==
                                              "true"
                                          ? Get.offNamed(
                                              Routes.changeEventDialog)
                                          : _eventAuthController.validate();
                                    },
                                    child: _eventAuthController.isFromDrawer ==
                                            "true"
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
            _eventAuthController.isLoading.value
                ? Utility.buildProgressIndicator()
                : Container()
          ],
        );
      },
    );
  }
}
