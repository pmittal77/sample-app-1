import '../pharmacy_screen/widgets/listcalciumllysin_item_widget.dart';
import '../pharmacy_screen/widgets/listef58faa9a71e47e_item_widget.dart';
import 'controller/pharmacy_controller.dart';
import 'models/listcalciumllysin_item_model.dart';
import 'models/listef58faa9a71e47e_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pankaj_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';
import 'package:pankaj_s_application1/widgets/custom_search_view.dart';

class PharmacyScreen extends GetWidget<PharmacyController> {
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
                    margin: getMargin(bottom: 3),
                    onTap: onTapArrowleft8),
                title: AppbarSubtitle3(
                    text: "lbl_pharmacy".tr, margin: getMargin(left: 94)),
                actions: [
                  AppbarImage(
                      height: getSize(18.00),
                      width: getSize(18.00),
                      svgPath: ImageConstant.imgCart)
                ]),
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
                          hintText: "msg_search_drugs_c".tr,
                          margin: getMargin(left: 21, top: 33, right: 21),
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 12, right: 9, bottom: 11),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(15.00),
                              minHeight: getSize(15.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(left: 21, top: 24, right: 19),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Container(
                                  height: getVerticalSize(135.00),
                                  width: getHorizontalSize(335.00),
                                  decoration: AppDecoration
                                      .gradientBlue601Blue700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(left: 10),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                10.00)),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgContractrqe1,
                                                        height: getVerticalSize(
                                                            135.00),
                                                        width:
                                                            getHorizontalSize(
                                                                195.00),
                                                        fit: BoxFit.cover)))),
                                        CustomButton(
                                            width: 132,
                                            text: "msg_upload_prescrip".tr,
                                            margin: getMargin(
                                                left: 25,
                                                top: 20,
                                                right: 25,
                                                bottom: 20),
                                            variant:
                                                ButtonVariant.FillWhiteA700,
                                            padding: ButtonPadding.PaddingAll7,
                                            fontStyle: ButtonFontStyle
                                                .RalewayRomanSemiBold12,
                                            alignment: Alignment.bottomLeft),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(155.00),
                                                margin: getMargin(all: 26),
                                                child: Text(
                                                    "msg_order_quickly_w".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayRomanSemiBold18
                                                        .copyWith(
                                                            height: 1.39))))
                                      ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 21, top: 26, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_popular_product".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanSemiBold16Gray901)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("lbl_see_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanMedium14))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(179.00),
                              width: getHorizontalSize(392.00),
                              child: Obx(() => ListView.builder(
                                  padding: getPadding(left: 10, top: 14),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.pharmacyModelObj.value
                                      .listef58faa9a71e47eItemList.length,
                                  itemBuilder: (context, index) {
                                    Listef58faa9a71e47eItemModel model =
                                        controller.pharmacyModelObj.value
                                            .listef58faa9a71e47eItemList[index];
                                    return Listef58faa9a71e47eItemWidget(model,
                                        onTapImgPlus: onTapImgPlus);
                                  })))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding:
                                  getPadding(left: 10, top: 24, bottom: 59),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1, right: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text(
                                                      "lbl_product_on_sale".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayRomanSemiBold16Gray901)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 169, top: 1),
                                                  child: Text("lbl_see_all".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayRomanMedium14))
                                            ])),
                                    Container(
                                        height: getVerticalSize(181.00),
                                        width: getHorizontalSize(354.00),
                                        child: Obx(() => ListView.builder(
                                            padding:
                                                getPadding(top: 16, right: 10),
                                            scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            itemCount: controller
                                                .pharmacyModelObj
                                                .value
                                                .listcalciumllysinItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListcalciumllysinItemModel model =
                                                  controller
                                                          .pharmacyModelObj
                                                          .value
                                                          .listcalciumllysinItemList[
                                                      index];
                                              return ListcalciumllysinItemWidget(
                                                  model,
                                                  onTapImgPlusThree:
                                                      onTapImgPlusThree);
                                            })))
                                  ])))
                    ])))));
  }

  onTapImgPlus() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapImgPlusThree() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapArrowleft8() {
    Get.back();
  }
}
