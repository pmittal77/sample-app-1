import '../doctor_detail_screen/widgets/doctor_detail_item_widget.dart';
import 'controller/doctor_detail_controller.dart';
import 'models/doctor_detail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pankaj_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';
import 'package:pankaj_s_application1/widgets/custom_icon_button.dart';

class DoctorDetailScreen extends GetWidget<DoctorDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 7,
                leading: AppbarImage(
                    height: getVerticalSize(15.00),
                    width: getHorizontalSize(7.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(bottom: 1),
                    onTap: onTapArrowleft4),
                centerTitle: true,
                title: AppbarSubtitle3(text: "lbl_doctor_detail".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16.00),
                      width: getHorizontalSize(4.00),
                      svgPath: ImageConstant.imgComponent1)
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(668.00),
                        width: getHorizontalSize(327.00),
                        margin:
                            getMargin(left: 24, top: 43, right: 24, bottom: 28),
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  margin: getMargin(
                                      left: 10, top: 148, bottom: 148),
                                  padding: getPadding(
                                      left: 25, top: 12, right: 27, bottom: 11),
                                  decoration: AppDecoration.txtOutlineGray101
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtRoundedBorder15),
                                  child: Text("lbl_08_00_pm".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRalewayRomanRegular12))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 1, right: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              8.00)),
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle959,
                                                      height: getSize(115.00),
                                                      width: getSize(115.00),
                                                      fit: BoxFit.cover)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15,
                                                      top: 10,
                                                      bottom: 8),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
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
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRalewayRomanSemiBold18Gray901),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10,
                                                                right: 10),
                                                            child: Text(
                                                                "lbl_chardiologist"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRomanMedium14Gray500)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                top: 10,
                                                                right: 10),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              2),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgStar,
                                                                          height: getVerticalSize(
                                                                              14.00),
                                                                          width:
                                                                              getHorizontalSize(15.00))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              3),
                                                                      child: Text(
                                                                          "lbl_4_7"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRalewayRomanMedium135))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2,
                                                                top: 9,
                                                                right: 10,
                                                                bottom: 1),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgLocation,
                                                                          height: getVerticalSize(
                                                                              13.00),
                                                                          width:
                                                                              getHorizontalSize(11.00))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_800m_away"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRalewayRomanMedium14Gray500))
                                                                ]))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 1, top: 19, right: 10),
                                        child: Text("lbl_about".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanSemiBold16Gray901)),
                                    Container(
                                        width: getHorizontalSize(304.00),
                                        margin: getMargin(
                                            left: 1, top: 17, right: 10),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "msg_lorem_ipsum_dol2".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray601,
                                                      fontSize: getFontSize(12),
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.67)),
                                              TextSpan(
                                                  text: "lbl_read_more".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.blue600,
                                                      fontSize: getFontSize(12),
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.67))
                                            ]),
                                            textAlign: TextAlign.left)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(left: 1, top: 35),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            15.00))),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineBluegray50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16),
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
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            12,
                                                                        top: 14,
                                                                        right:
                                                                            12),
                                                                child: Text(
                                                                    "lbl_mon"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanRegular10)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            12,
                                                                        top: 5,
                                                                        right:
                                                                            12,
                                                                        bottom:
                                                                            15),
                                                                child: Text(
                                                                    "lbl_21".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanSemiBold18Gray901))
                                                          ])),
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineBluegray50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            13,
                                                                        top: 14,
                                                                        right:
                                                                            13),
                                                                child: Text(
                                                                    "lbl_tue"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanRegular10)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            11,
                                                                        top: 5,
                                                                        right:
                                                                            11,
                                                                        bottom:
                                                                            15),
                                                                child: Text(
                                                                    "lbl_22".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanSemiBold18Gray901))
                                                          ])),
                                                  Container(
                                                      decoration: AppDecoration
                                                          .fillBlue600
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            11,
                                                                        top: 14,
                                                                        right:
                                                                            11),
                                                                child: Text(
                                                                    "lbl_wed"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanRegular10WhiteA700)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            11,
                                                                        top: 7,
                                                                        right:
                                                                            11,
                                                                        bottom:
                                                                            13),
                                                                child: Text(
                                                                    "lbl_23".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanSemiBold18))
                                                          ])),
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineBluegray50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            13,
                                                                        top: 14,
                                                                        right:
                                                                            13),
                                                                child: Text(
                                                                    "lbl_thu"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanRegular10)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            11,
                                                                        top: 7,
                                                                        right:
                                                                            11,
                                                                        bottom:
                                                                            13),
                                                                child: Text(
                                                                    "lbl_24".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanSemiBold18Gray901))
                                                          ])),
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineBluegray50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 14,
                                                                        right:
                                                                            16),
                                                                child: Text(
                                                                    "lbl_fri"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanRegular10)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            11,
                                                                        top: 7,
                                                                        right:
                                                                            11,
                                                                        bottom:
                                                                            13),
                                                                child: Text(
                                                                    "lbl_25".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanSemiBold18Gray901))
                                                          ])),
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineBluegray50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            14,
                                                                        top: 14,
                                                                        right:
                                                                            14),
                                                                child: Text(
                                                                    "lbl_sat"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanRegular10)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            11,
                                                                        top: 4,
                                                                        right:
                                                                            11,
                                                                        bottom:
                                                                            16),
                                                                child: Text(
                                                                    "lbl_26".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewayRomanSemiBold18Gray901))
                                                          ]))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(327.00),
                                        margin: getMargin(top: 32),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Container(
                                        width: double.infinity,
                                        margin: getMargin(top: 32),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(15.00))),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Obx(() => ListView.builder(
                                                  physics:
                                                      BouncingScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemCount: controller
                                                      .doctorDetailModelObj
                                                      .value
                                                      .doctorDetailItemList
                                                      .length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    DoctorDetailItemModel
                                                        model = controller
                                                            .doctorDetailModelObj
                                                            .value
                                                            .doctorDetailItemList[index];
                                                    return DoctorDetailItemWidget(
                                                        model);
                                                  })),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 14, right: 10),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                            padding: getPadding(
                                                                left: 25,
                                                                top: 12,
                                                                bottom: 11),
                                                            decoration: AppDecoration
                                                                .txtOutlineBluegray101
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .txtRoundedBorder15),
                                                            child: Text(
                                                                "lbl_04_00_pm"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRomanRegular12Gray901)),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 9),
                                                            padding: getPadding(
                                                                left: 25,
                                                                top: 12,
                                                                bottom: 11),
                                                            decoration: AppDecoration
                                                                .txtOutlineBluegray101
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .txtRoundedBorder15),
                                                            child: Text(
                                                                "lbl_07_00_pm"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRomanRegular12Gray901))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 96),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomIconButton(
                                                  height: 50,
                                                  width: 50,
                                                  variant: IconButtonVariant
                                                      .FillBlue52,
                                                  shape: IconButtonShape
                                                      .RoundedBorder8,
                                                  padding: IconButtonPadding
                                                      .PaddingAll15,
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgCut)),
                                              CustomButton(
                                                  width: 266,
                                                  text:
                                                      "lbl_book_apointment".tr)
                                            ]))
                                  ]))
                        ]))))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
