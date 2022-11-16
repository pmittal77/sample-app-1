import 'controller/create_new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';
import 'package:pankaj_s_application1/widgets/custom_text_form_field.dart';

class CreateNewPasswordScreen extends GetWidget<CreateNewPasswordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 39, top: 12, right: 39),
                              child: InkWell(
                                  onTap: () {
                                    onTapImgArrowleft();
                                  },
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgArrowleft,
                                      height: getVerticalSize(15.00),
                                      width: getHorizontalSize(7.00))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 55, right: 24),
                              child: Text("msg_create_new_pass".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanBold24))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 18, right: 24),
                              child: Text("msg_create_your_new".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanRegular16))),
                      CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.inputController,
                          hintText: "msg_enter_new_passw".tr,
                          margin: getMargin(left: 24, top: 24, right: 24),
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 26, top: 18, right: 18, bottom: 18),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgCar)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(20.00),
                              minHeight: getSize(20.00)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 26, bottom: 18),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgEyeslash)),
                          suffixConstraints: BoxConstraints(
                              minWidth: getHorizontalSize(20.00),
                              minHeight: getVerticalSize(20.00))),
                      Obx(() => CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.inputOneController,
                          hintText: "msg_confirm_passwor".tr,
                          margin: getMargin(left: 24, top: 16, right: 24),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 26, top: 18, right: 18, bottom: 18),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgCar)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(20.00),
                              minHeight: getSize(20.00)),
                          suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword.value =
                                    !controller.isShowPassword.value;
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 18, right: 26, bottom: 18),
                                  child: CommonImageView(
                                      svgPath: controller.isShowPassword.value
                                          ? ImageConstant.imgEyeslash
                                          : ImageConstant.imgEyeslash))),
                          suffixConstraints: BoxConstraints(
                              minWidth: getHorizontalSize(20.00),
                              minHeight: getVerticalSize(20.00)),
                          isObscureText: !controller.isShowPassword.value)),
                      CustomButton(
                          width: 327,
                          text: "lbl_create_password".tr,
                          margin: getMargin(
                              left: 24, top: 24, right: 24, bottom: 20),
                          alignment: Alignment.center)
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
