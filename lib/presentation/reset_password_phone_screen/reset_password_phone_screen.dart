import 'controller/reset_password_phone_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';
import 'package:pankaj_s_application1/widgets/custom_text_form_field.dart';

class ResetPasswordPhoneScreen extends GetWidget<ResetPasswordPhoneController> {
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
                                    Container(
                                        margin: getMargin(
                                            left: 63, top: 18, bottom: 18),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(7.00))),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text("lbl_email".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayRomanMedium14Bluegray300))
                                            ])),
                                    CustomButton(
                                        width: 151,
                                        text: "lbl_phone".tr,
                                        margin: getMargin(
                                            top: 4, right: 4, bottom: 4),
                                        variant:
                                            ButtonVariant.OutlineBlack9000c,
                                        padding: ButtonPadding.PaddingAll16,
                                        fontStyle: ButtonFontStyle
                                            .RalewayRomanSemiBold14)
                                  ]))),
                      CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.inputController,
                          hintText: "lbl_085281882151".tr,
                          margin: getMargin(left: 24, top: 24, right: 24),
                          variant: TextFormFieldVariant.OutlineBlue600,
                          fontStyle:
                              TextFormFieldFontStyle.RalewayRomanMedium16,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 26, top: 18, right: 18, bottom: 18),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgCall)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(20.00),
                              minHeight: getSize(20.00))),
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
