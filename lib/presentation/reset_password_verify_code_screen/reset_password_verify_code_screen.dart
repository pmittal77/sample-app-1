import 'controller/reset_password_verify_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ResetPasswordVerifyCodeScreen
    extends GetWidget<ResetPasswordVerifyCodeController> {
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
                              child: Text("msg_enter_verificat".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanBold24))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(272.00),
                              margin: getMargin(left: 24, top: 19, right: 24),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_enter_code_that2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.bluegray300,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "lbl_08528188".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w500))
                                  ]),
                                  textAlign: TextAlign.left))),
                      Padding(
                          padding: getPadding(left: 24, top: 35, right: 23),
                          child: Container(
                              width: getHorizontalSize(328.00),
                              height: getVerticalSize(64.00),
                              child: Obx(() => PinCodeTextField(
                                  appContext: context,
                                  controller: controller.otpController.value,
                                  length: 4,
                                  obscureText: false,
                                  obscuringCharacter: '*',
                                  keyboardType: TextInputType.number,
                                  autoDismissKeyboard: true,
                                  enableActiveFill: true,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  onChanged: (value) {},
                                  textStyle: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(24),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w700),
                                  pinTheme: PinTheme(
                                      fieldHeight: getHorizontalSize(64.00),
                                      fieldWidth: getHorizontalSize(64.00),
                                      shape: PinCodeFieldShape.box,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(16.00)),
                                      selectedFillColor:
                                          ColorConstant.whiteA700,
                                      activeFillColor: ColorConstant.whiteA700,
                                      inactiveFillColor:
                                          ColorConstant.whiteA700,
                                      inactiveColor: ColorConstant.blue600,
                                      selectedColor: ColorConstant.blue600,
                                      activeColor: ColorConstant.blue600))))),
                      CustomButton(
                          width: 327,
                          text: "lbl_verify".tr,
                          margin: getMargin(left: 24, top: 40, right: 24),
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(
                                  left: 24, top: 28, right: 24, bottom: 20),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_didn_t_receive2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.50)),
                                    TextSpan(
                                        text: "lbl_resend".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blue600,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w500))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
