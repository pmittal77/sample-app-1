import '../find_doctors_screen/widgets/doctors_item_widget.dart';
import '../find_doctors_screen/widgets/find_doctors_item_widget.dart';
import 'controller/find_doctors_controller.dart';
import 'models/doctors_item_model.dart';
import 'models/find_doctors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:pankaj_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application1/widgets/custom_search_view.dart';

class FindDoctorsScreen extends GetWidget<FindDoctorsController> {
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
                    margin: getMargin(top: 1, bottom: 1),
                    onTap: onTapArrowleft3),
                title: AppbarSubtitle2(
                    text: "lbl_find_doctors".tr, margin: getMargin(left: 86))),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      CustomSearchView(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "lbl_find_a_doctor".tr,
                          margin: getMargin(left: 24, top: 35, right: 24),
                          padding: SearchViewPadding.PaddingAll16,
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 18, top: 15, right: 13, bottom: 14),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(15.00),
                              minHeight: getSize(15.00))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 29, right: 24),
                              child: Text("lbl_category".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold18
                                      .copyWith(letterSpacing: 0.30)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 12, right: 24),
                              child: Obx(() => GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent:
                                              getVerticalSize(83.00),
                                          crossAxisCount: 3,
                                          mainAxisSpacing:
                                              getHorizontalSize(108.00),
                                          crossAxisSpacing:
                                              getHorizontalSize(108.00)),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.findDoctorsModelObj
                                      .value.findDoctorsItemList.length,
                                  itemBuilder: (context, index) {
                                    FindDoctorsItemModel model = controller
                                        .findDoctorsModelObj
                                        .value
                                        .findDoctorsItemList[index];
                                    return FindDoctorsItemWidget(model);
                                  })))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 26, right: 24),
                              child: Text("msg_recommended_doc".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRalewayRomanSemiBold18Gray900
                                      .copyWith(letterSpacing: 0.30)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 24, top: 15, right: 24),
                              decoration: AppDecoration.outlineBluegray50
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 24, top: 16, bottom: 28),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(44.00)),
                                            child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse88,
                                                height: getSize(88.00),
                                                width: getSize(88.00),
                                                fit: BoxFit.cover))),
                                    Padding(
                                        padding: getPadding(
                                            left: 24, top: 20, bottom: 23),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(right: 10),
                                                  child: Text(
                                                      "msg_dr_marcus_hori".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayRomanSemiBold16)),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 11, right: 10),
                                                  child: Text(
                                                      "lbl_chardiologist".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayRomanRegular14)),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(167.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray50)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1,
                                                      top: 24,
                                                      right: 10),
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
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1,
                                                                bottom: 2),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgStar,
                                                                height:
                                                                    getVerticalSize(
                                                                        12.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        13.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 5,
                                                                top: 2,
                                                                bottom: 1),
                                                            child: Text(
                                                                "lbl_4_7".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRomanMedium12)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 26,
                                                                bottom: 1),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLocation13X11,
                                                                height:
                                                                    getVerticalSize(
                                                                        13.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        11.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 6,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_800m_away"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRomanMedium14Bluegray801))
                                                      ]))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 44, right: 24),
                              child: Text("msg_your_recent_doc".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRalewayRomanSemiBold18Gray900))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(105.00),
                              width: getHorizontalSize(328.00),
                              child: Obx(() => ListView.builder(
                                  padding:
                                      getPadding(left: 24, top: 15, right: 23),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.findDoctorsModelObj
                                      .value.doctorsItemList.length,
                                  itemBuilder: (context, index) {
                                    DoctorsItemModel model = controller
                                        .findDoctorsModelObj
                                        .value
                                        .doctorsItemList[index];
                                    return DoctorsItemWidget(model);
                                  }))))
                    ])))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
