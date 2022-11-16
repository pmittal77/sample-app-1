import '../articles_screen/widgets/listrectangle460_item_widget.dart';
import '../articles_screen/widgets/listunsplash86rvjm_item_widget.dart';
import 'controller/articles_controller.dart';
import 'models/listrectangle460_item_model.dart';
import 'models/listunsplash86rvjm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pankaj_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application1/widgets/custom_search_view.dart';
import 'package:pankaj_s_application1/widgets/custom_text_form_field.dart';

class ArticlesScreen extends GetWidget<ArticlesController> {
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
                    margin: getMargin(bottom: 1),
                    onTap: onTapArrowleft7),
                centerTitle: true,
                title: AppbarSubtitle3(text: "lbl_articles".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16.00),
                      width: getHorizontalSize(4.00),
                      svgPath: ImageConstant.imgComponent1)
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 35),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomSearchView(
                                  width: 327,
                                  focusNode: FocusNode(),
                                  controller: controller.searchController,
                                  hintText: "msg_search_articles".tr,
                                  margin: getMargin(left: 4, right: 10),
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 17,
                                          top: 12,
                                          right: 9,
                                          bottom: 11),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(15.00),
                                      minHeight: getSize(15.00))),
                              Align(
                                  alignment: Alignment.center,
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      padding: getPadding(left: 4, top: 27),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(
                                                          10.00))),
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
                                                        "msg_popular_article"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRalewayRomanSemiBold16Gray901)),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        margin: getMargin(
                                                            left: 1, top: 14),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        10.00))),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              CustomTextFormField(
                                                                  width: 118,
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  controller:
                                                                      controller
                                                                          .groupNinetyTwoController,
                                                                  hintText:
                                                                      "lbl_covid_19"
                                                                          .tr,
                                                                  variant:
                                                                      TextFormFieldVariant
                                                                          .FillBlue600,
                                                                  shape: TextFormFieldShape
                                                                      .RoundedBorder10,
                                                                  padding:
                                                                      TextFormFieldPadding
                                                                          .PaddingT19,
                                                                  fontStyle:
                                                                      TextFormFieldFontStyle
                                                                          .RalewayRomanSemiBold14),
                                                              Container(
                                                                  padding: getPadding(
                                                                      left: 30,
                                                                      top: 17,
                                                                      right: 30,
                                                                      bottom:
                                                                          17),
                                                                  decoration: AppDecoration
                                                                      .txtFillBlue600
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .txtRoundedBorder10),
                                                                  child: Text(
                                                                      "lbl_diet"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRalewayRomanSemiBold14WhiteA700)),
                                                              CustomTextFormField(
                                                                  width: 118,
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  controller:
                                                                      controller
                                                                          .groupNinetyController,
                                                                  hintText:
                                                                      "lbl_fitness"
                                                                          .tr,
                                                                  variant:
                                                                      TextFormFieldVariant
                                                                          .FillBlue600,
                                                                  shape: TextFormFieldShape
                                                                      .RoundedBorder10,
                                                                  padding:
                                                                      TextFormFieldPadding
                                                                          .PaddingT19,
                                                                  fontStyle:
                                                                      TextFormFieldFontStyle
                                                                          .RalewayRomanSemiBold14,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .done)
                                                            ])))
                                              ])))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: double.infinity,
                                      margin: getMargin(left: 4, top: 24),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(10.00))),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 2, right: 10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "msg_trending_articl"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRalewayRomanSemiBold16Gray901)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 166,
                                                              bottom: 3),
                                                          child: Text(
                                                              "lbl_see_all".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRalewayRomanRegular12Blue600))
                                                    ])),
                                            Container(
                                                height: getVerticalSize(233.00),
                                                width:
                                                    getHorizontalSize(492.00),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                10.00))),
                                                child: Obx(() =>
                                                    ListView.builder(
                                                        padding:
                                                            getPadding(top: 14),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        physics:
                                                            BouncingScrollPhysics(),
                                                        itemCount: controller
                                                            .articlesModelObj
                                                            .value
                                                            .listrectangle460ItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          Listrectangle460ItemModel
                                                              model = controller
                                                                  .articlesModelObj
                                                                  .value
                                                                  .listrectangle460ItemList[index];
                                                          return Listrectangle460ItemWidget(
                                                              model);
                                                        })))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 25, right: 10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text("msg_related_article".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanSemiBold16Black900),
                                        Padding(
                                            padding: getPadding(
                                                left: 176, top: 1, bottom: 1),
                                            child: Text("lbl_see_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanRegular12Blue600))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 16, right: 10),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .articlesModelObj
                                          .value
                                          .listunsplash86rvjmItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listunsplash86rvjmItemModel model =
                                            controller.articlesModelObj.value
                                                    .listunsplash86rvjmItemList[
                                                index];
                                        return Listunsplash86rvjmItemWidget(
                                            model);
                                      })))
                            ]))))));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
