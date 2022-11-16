import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:pankaj_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';
import 'package:pankaj_s_application1/widgets/custom_text_form_field.dart';
import 'package:pankaj_s_application1/domain/googleauth/google_auth_helper.dart';
import 'package:pankaj_s_application1/domain/facebookauth/facebook_auth_helper.dart';

class LoginScreen extends GetWidget<LoginController> {
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
                    onTap: onTapArrowleft),
                actions: [AppbarSubtitle2(text: "lbl_login".tr)]),
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
                          hintText: "msg_enter_your_emai".tr,
                          margin: getMargin(left: 24, top: 48, right: 24),
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
                          controller: controller.inputOneController,
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
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 24, top: 12, right: 24),
                              child: Text("msg_forgot_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanMedium14))),
                      CustomButton(
                          width: 327,
                          text: "lbl_login".tr,
                          margin: getMargin(left: 24, top: 32, right: 24),
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 24, top: 30, right: 24),
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
                                  textAlign: TextAlign.left))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(31.00),
                              width: getHorizontalSize(327.00),
                              margin: getMargin(left: 24, top: 25, right: 24),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(327.00),
                                        margin: getMargin(top: 14, bottom: 14),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray200))),
                                CustomButton(
                                    width: 53,
                                    text: "lbl_or".tr,
                                    margin: getMargin(left: 40, right: 40),
                                    variant: ButtonVariant.FillWhiteA700,
                                    shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingAll7,
                                    fontStyle:
                                        ButtonFontStyle.RalewayRomanRegular16,
                                    alignment: Alignment.center)
                              ]))),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapButtonwithG();
                              },
                              child: Container(
                                  margin:
                                      getMargin(left: 24, top: 24, right: 24),
                                  decoration: AppDecoration.outlineGray200
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 18, top: 18, bottom: 18),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgGoogle,
                                                height: getVerticalSize(20.00),
                                                width:
                                                    getHorizontalSize(19.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 52, top: 22, bottom: 16),
                                            child: Text(
                                                "msg_sign_in_with_go".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanSemiBold16))
                                      ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 24, top: 16, right: 24),
                              decoration: AppDecoration.outlineGray200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 18, bottom: 18),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgVector,
                                            height: getVerticalSize(19.00),
                                            width: getHorizontalSize(16.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 60, top: 22, bottom: 16),
                                        child: Text("msg_sign_in_with_ap".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanSemiBold16))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapButtonwithF();
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 24,
                                      top: 16,
                                      right: 24,
                                      bottom: 117),
                                  decoration: AppDecoration.outlineGray200
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(
                                                left: 18, top: 18, bottom: 18),
                                            color: ColorConstant.blue602,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                            child: Container(
                                                height: getSize(20.00),
                                                width: getSize(20.00),
                                                decoration: AppDecoration
                                                    .fillBlue602
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder8),
                                                child: Stack(children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 7,
                                                              top: 4,
                                                              right: 6,
                                                              bottom: 4),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgFacebook,
                                                              height:
                                                                  getVerticalSize(
                                                                      11.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      6.00))))
                                                ]))),
                                        Padding(
                                            padding: getPadding(
                                                left: 43, top: 22, bottom: 16),
                                            child: Text(
                                                "msg_sign_in_with_fa".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanSemiBold16))
                                      ]))))
                    ])))));
  }

  onTapButtonwithG() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapButtonwithF() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapArrowleft() {
    Get.back();
  }
}
