import '../profile_screen/widgets/healthtracking_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/healthtracking_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/custom_bottom_bar.dart';
import 'package:pankaj_s_application1/widgets/custom_icon_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment(3.3306690738754696e-16,
                                    1.249000902703301e-16),
                                end: Alignment(
                                    0.999999956335844, 0.432881786555413),
                                colors: [
                              ColorConstant.blue601,
                              ColorConstant.blue700
                            ])),
                        child: Container(
                            width: double.infinity,
                            decoration: AppDecoration.gradientBlue601Blue7001,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding:
                                              getPadding(left: 20, right: 20),
                                          child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgComponent1WhiteA700,
                                              height: getVerticalSize(16.00),
                                              width: getHorizontalSize(4.00)))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: getVerticalSize(82.00),
                                          width: getHorizontalSize(81.00),
                                          margin: getMargin(
                                              left: 20, top: 3, right: 20),
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            right: 1,
                                                            bottom: 2),
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        40.00)),
                                                            child: CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgEllipse27,
                                                                height: getSize(
                                                                    80.00),
                                                                width: getSize(
                                                                    80.00),
                                                                fit: BoxFit
                                                                    .cover)))),
                                                CustomIconButton(
                                                    height: 24,
                                                    width: 24,
                                                    margin: getMargin(
                                                        left: 10, top: 10),
                                                    variant: IconButtonVariant
                                                        .FillWhiteA700,
                                                    shape: IconButtonShape
                                                        .CircleBorder12,
                                                    padding: IconButtonPadding
                                                        .PaddingAll6,
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    onTap: () {
                                                      onTapBtntf();
                                                    },
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgCamera))
                                              ]))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 20, top: 18, right: 20),
                                          child: Text("lbl_amelia_renata".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 20, top: 32, right: 20),
                                          child: Obx(() => ListView.builder(
                                              physics: BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: controller
                                                  .profileModelObj
                                                  .value
                                                  .healthtrackingItemList
                                                  .length,
                                              itemBuilder: (context, index) {
                                                HealthtrackingItemModel model =
                                                    controller
                                                            .profileModelObj
                                                            .value
                                                            .healthtrackingItemList[
                                                        index];
                                                return HealthtrackingItemWidget(
                                                    model);
                                              })))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          width: double.infinity,
                                          margin: getMargin(top: 43),
                                          decoration: AppDecoration
                                              .fillWhiteA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL30),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 20,
                                                        top: 31,
                                                        right: 20),
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
                                                          Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 43,
                                                                    width: 43,
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgLocation43X43)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 15,
                                                                        bottom:
                                                                            11),
                                                                    child: Text(
                                                                        "lbl_my_saved"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRalewayRomanSemiBold16Gray901))
                                                              ]),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 14,
                                                                      bottom:
                                                                          13),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowright,
                                                                  height:
                                                                      getVerticalSize(
                                                                          16.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          9.00)))
                                                        ])),
                                                Container(
                                                    height:
                                                        getVerticalSize(1.00),
                                                    width: getHorizontalSize(
                                                        335.00),
                                                    margin: getMargin(
                                                        left: 20,
                                                        top: 13,
                                                        right: 20),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .bluegray50)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 20,
                                                        top: 13,
                                                        right: 20),
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
                                                          Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 43,
                                                                    width: 43,
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgMenu)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 15,
                                                                        bottom:
                                                                            11),
                                                                    child: Text(
                                                                        "lbl_appointmnet"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRalewayRomanSemiBold16Gray901))
                                                              ]),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 14,
                                                                      bottom:
                                                                          13),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowright,
                                                                  height:
                                                                      getVerticalSize(
                                                                          16.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          9.00)))
                                                        ])),
                                                Container(
                                                    height:
                                                        getVerticalSize(1.00),
                                                    width: getHorizontalSize(
                                                        335.00),
                                                    margin: getMargin(
                                                        left: 20,
                                                        top: 13,
                                                        right: 20),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .bluegray50)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 20,
                                                        top: 13,
                                                        right: 20),
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
                                                          Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 43,
                                                                    width: 43,
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgVideocamera43X43)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 15,
                                                                        bottom:
                                                                            11),
                                                                    child: Text(
                                                                        "lbl_payment_method"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRalewayRomanSemiBold16Gray901))
                                                              ]),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 13,
                                                                      bottom:
                                                                          14),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowright,
                                                                  height:
                                                                      getVerticalSize(
                                                                          16.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          9.00)))
                                                        ])),
                                                Container(
                                                    height:
                                                        getVerticalSize(1.00),
                                                    width: getHorizontalSize(
                                                        335.00),
                                                    margin: getMargin(
                                                        left: 20,
                                                        top: 13,
                                                        right: 20),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .bluegray50)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 20,
                                                        top: 13,
                                                        right: 20),
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
                                                          Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 43,
                                                                    width: 43,
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgCut43X43)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 13,
                                                                        bottom:
                                                                            13),
                                                                    child: Text(
                                                                        "lbl_faqs"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRalewayRomanSemiBold16Gray901))
                                                              ]),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 14,
                                                                      bottom:
                                                                          13),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowright,
                                                                  height:
                                                                      getVerticalSize(
                                                                          16.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          9.00)))
                                                        ])),
                                                Container(
                                                    height:
                                                        getVerticalSize(1.00),
                                                    width: getHorizontalSize(
                                                        335.00),
                                                    margin: getMargin(
                                                        left: 20,
                                                        top: 13,
                                                        right: 20),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .bluegray50)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 20,
                                                        top: 13,
                                                        right: 20,
                                                        bottom: 105),
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
                                                          Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 43,
                                                                    width: 43,
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .FillRed50,
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgMinimize)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 15,
                                                                        bottom:
                                                                            11),
                                                                    child: Text(
                                                                        "lbl_logout2"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRalewayRomanSemiBold16RedA200))
                                                              ]),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 14,
                                                                      bottom:
                                                                          13),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowright,
                                                                  height:
                                                                      getVerticalSize(
                                                                          16.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          9.00)))
                                                        ]))
                                              ])))
                                ]))))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Checkmark24X26:
        return getDefaultWidget();
      case BottomBarEnum.Calendar:
        return getDefaultWidget();
      case BottomBarEnum.User24X19:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }

  onTapBtntf() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
