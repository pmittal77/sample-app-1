import 'controller/chat_with_doctor_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pankaj_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';
import 'package:pankaj_s_application1/widgets/custom_text_form_field.dart';

class ChatWithDoctorScreen extends GetWidget<ChatWithDoctorController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(768.00),
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(
                                      left: 24, top: 11, right: 20, bottom: 26),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomAppBar(
                                            height: getVerticalSize(56.00),
                                            leadingWidth: 7,
                                            leading: AppbarImage(
                                                height: getVerticalSize(15.00),
                                                width: getHorizontalSize(7.00),
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                onTap: onTapArrowleft6),
                                            title: AppbarSubtitle3(
                                                text: "msg_dr_marcus_hori".tr,
                                                margin: getMargin(left: 26)),
                                            actions: [
                                              AppbarImage(
                                                  height:
                                                      getVerticalSize(11.00),
                                                  width:
                                                      getHorizontalSize(18.00),
                                                  svgPath: ImageConstant
                                                      .imgVideocamera11X18,
                                                  margin: getMargin(
                                                      top: 2, bottom: 2)),
                                              AppbarImage(
                                                  height: getSize(15.00),
                                                  width: getSize(15.00),
                                                  svgPath: ImageConstant
                                                      .imgCall15X15,
                                                  margin: getMargin(left: 18)),
                                              AppbarImage(
                                                  height:
                                                      getVerticalSize(16.00),
                                                  width:
                                                      getHorizontalSize(4.00),
                                                  svgPath: ImageConstant
                                                      .imgComponent1,
                                                  margin: getMargin(left: 22))
                                            ]),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(
                                                    top: 61, right: 4),
                                                decoration: AppDecoration
                                                    .outlineGray200
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 40,
                                                              top: 19,
                                                              right: 40),
                                                          child: Text(
                                                              "msg_consultion_star"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRalewayRomanSemiBold16Blue600)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 40,
                                                              top: 6,
                                                              right: 40,
                                                              bottom: 19),
                                                          child: Text(
                                                              "msg_you_can_consult"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRalewayRomanMedium12Gray500))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 20, right: 10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      20.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgPexelscedricf,
                                                              height: getSize(
                                                                  40.00),
                                                              width: getSize(
                                                                  40.00),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 13,
                                                              top: 4,
                                                              bottom: 2),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "msg_dr_marcus_hori"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanSemiBold14Gray901),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 5,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_10_min_ago"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRalewayRomanMedium10))
                                                              ]))
                                                    ]))),
                                        CustomButton(
                                            width: 205,
                                            text: "msg_hello_how_can".tr,
                                            margin:
                                                getMargin(top: 10, right: 10),
                                            variant: ButtonVariant.FillGray200,
                                            shape: ButtonShape.CustomBorderBL8,
                                            padding: ButtonPadding.PaddingAll7,
                                            fontStyle: ButtonFontStyle
                                                .RalewayRomanRegular14,
                                            alignment: Alignment.centerLeft),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                margin: getMargin(
                                                    left: 90,
                                                    top: 15,
                                                    right: 4),
                                                decoration: AppDecoration
                                                    .fillBlue600
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL8),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  199.00),
                                                          margin: getMargin(
                                                              top: 15,
                                                              bottom: 11),
                                                          child: Text(
                                                              "msg_i_have_sufferin"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRalewayRomanRegular14WhiteA700
                                                                  .copyWith(
                                                                      height:
                                                                          1.43))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2,
                                                              top: 63,
                                                              right: 6,
                                                              bottom: 9),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCheckmark8X15,
                                                              height:
                                                                  getVerticalSize(
                                                                      8.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      15.00)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 1,
                                                    top: 15,
                                                    right: 10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      20.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgPexelscedricf,
                                                              height:
                                                                  getVerticalSize(
                                                                      40.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      39.00),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 13,
                                                              top: 4,
                                                              bottom: 4),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "msg_dr_marcus_hori"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanSemiBold14Gray901),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 5,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_5_min_ago"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRalewayRomanMedium10))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(221.00),
                                                margin: getMargin(
                                                    top: 10, right: 10),
                                                decoration: AppDecoration
                                                    .fillGray200
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderBL8),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      186.00),
                                                              margin: getMargin(
                                                                  all: 13),
                                                              child: Text(
                                                                  "msg_ok_do_you_have"
                                                                      .tr,
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRalewayRomanRegular14Gray700
                                                                      .copyWith(
                                                                          height:
                                                                              1.43))))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                margin: getMargin(
                                                    left: 90,
                                                    top: 15,
                                                    right: 4),
                                                decoration: AppDecoration
                                                    .fillBlue600
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL8),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  164.00),
                                                          margin: getMargin(
                                                              top: 13,
                                                              bottom: 9),
                                                          child: Text(
                                                              "msg_i_don_t_have_an2"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRalewayRomanRegular14WhiteA700
                                                                  .copyWith(
                                                                      height:
                                                                          1.43))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 37,
                                                              top: 39,
                                                              right: 5,
                                                              bottom: 9),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCheckmark8X15,
                                                              height:
                                                                  getVerticalSize(
                                                                      8.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      15.00)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 1,
                                                    top: 15,
                                                    right: 10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      20.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgPexelscedricf,
                                                              height:
                                                                  getVerticalSize(
                                                                      40.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      39.00),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 13,
                                                              top: 4,
                                                              bottom: 4),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "msg_dr_marcus_hori"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanSemiBold14Gray901),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 5,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_online"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRalewayRomanMedium10))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(22.00),
                                                width: getHorizontalSize(58.00),
                                                margin: getMargin(
                                                    top: 10, right: 10),
                                                decoration:
                                                    AppDecoration.fillGray200,
                                                child: Stack(children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 13,
                                                              top: 10,
                                                              right: 13,
                                                              bottom: 8),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgGroup141,
                                                              height:
                                                                  getVerticalSize(
                                                                      5.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      32.00))))
                                                ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 42, right: 4),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomTextFormField(
                                                          width: 207,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .typemessageController,
                                                          hintText:
                                                              "msg_type_message"
                                                                  .tr,
                                                          variant:
                                                              TextFormFieldVariant
                                                                  .OutlineBluegray50,
                                                          padding:
                                                              TextFormFieldPadding
                                                                  .PaddingT19,
                                                          fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .RalewayRomanRegular14,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          suffix: Container(
                                                              margin: getMargin(
                                                                  left: 30,
                                                                  top: 17,
                                                                  right: 21,
                                                                  bottom: 17),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgVector15X13)),
                                                          suffixConstraints:
                                                              BoxConstraints(
                                                                  minWidth:
                                                                      getHorizontalSize(
                                                                          13.00),
                                                                  minHeight:
                                                                      getVerticalSize(
                                                                          15.00))),
                                                      CustomButton(
                                                          width: 111,
                                                          text: "lbl_send".tr)
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
