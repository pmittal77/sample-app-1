import 'controller/reset_password_email_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';
import 'package:pankaj_s_application1/widgets/custom_text_form_field.dart';

class ResetPasswordEmailScreen extends GetWidget<ResetPasswordEmailController> {
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
                              padding: getPadding(left: 24, top: 58, right: 24),
                              child: Text("msg_forgot_your_pas".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanBold24))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(318.00),
                              margin: getMargin(left: 24, top: 14, right: 24),
                              child: Text("msg_enter_your_emai2".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRalewayRomanMedium16Bluegray300))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 24, top: 24, right: 24),
                              decoration: AppDecoration.fillGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomButton(
                                        width: 151,
                                        text: "lbl_email".tr,
                                        margin: getMargin(
                                            left: 4, top: 4, bottom: 4),
                                        variant:
                                            ButtonVariant.OutlineBlack9000c,
                                        padding: ButtonPadding.PaddingAll16,
                                        fontStyle: ButtonFontStyle
                                            .RalewayRomanSemiBold14),
                                    Padding(
                                        padding: getPadding(
                                            top: 18, right: 57, bottom: 18),
                                        child: Text("lbl_phone".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanMedium14Bluegray400))
                                  ]))),
                      CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.emailOneController,
                          hintText: "msg_jamesschleifer".tr,
                          margin: getMargin(left: 24, top: 24, right: 24),
                          variant: TextFormFieldVariant.OutlineBlue600,
                          fontStyle:
                              TextFormFieldFontStyle.RalewayRomanMedium16,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 26, top: 19, right: 16, bottom: 19),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgClock)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(17.00),
                              minHeight: getSize(17.00)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 24, top: 24, right: 26, bottom: 24),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgCheckmark8X10)),
                          suffixConstraints: BoxConstraints(
                              minWidth: getHorizontalSize(10.00),
                              minHeight: getVerticalSize(8.00))),
                      CustomButton(
                          width: 327,
                          text: "lbl_reset_password".tr,
                          margin: getMargin(
                              left: 24, top: 32, right: 24, bottom: 20),
                          alignment: Alignment.center)
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
