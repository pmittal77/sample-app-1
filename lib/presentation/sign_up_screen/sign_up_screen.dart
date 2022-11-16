import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:pankaj_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';
import 'package:pankaj_s_application1/widgets/custom_checkbox.dart';
import 'package:pankaj_s_application1/widgets/custom_text_form_field.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 7,
                leading: AppbarImage(
                    height: getVerticalSize(15.00),
                    width: getHorizontalSize(7.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(bottom: 4),
                    onTap: onTapArrowleft1),
                title: AppbarSubtitle2(
                    text: "lbl_sign_up".tr, margin: getMargin(left: 108))),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.inputController,
                          hintText: "lbl_enter_your_name".tr,
                          margin: getMargin(left: 24, top: 48, right: 24),
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 27, top: 18, right: 19, bottom: 18),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgUser)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(20.00),
                              minHeight: getSize(20.00))),
                      CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.inputOneController,
                          hintText: "msg_enter_your_emai".tr,
                          margin: getMargin(left: 24, top: 16, right: 24),
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 26, top: 19, right: 18, bottom: 19),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgCheckmark)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(17.00),
                              minHeight: getSize(17.00))),
                      Obx(() => CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.inputTwoController,
                          hintText: "msg_enter_your_pass".tr,
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
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 24, top: 16, right: 24),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(8.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Obx(() => CustomCheckbox(
                                            alignment: Alignment.centerLeft,
                                            text: "msg_i_agree_to_the2".tr,
                                            iconSize: 24,
                                            value: controller.checkbox.value,
                                            padding: getPadding(right: 29),
                                            onChange: (value) {
                                              controller.checkbox.value = value;
                                            })))
                                  ]))),
                      CustomButton(
                          width: 327,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(left: 24, top: 30, right: 24),
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(
                                  left: 24, top: 30, right: 24, bottom: 20),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_don_t_have_an_a2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.50)),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_sign_up".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blue600,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w500))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ])))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
