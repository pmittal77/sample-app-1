import 'controller/schedule1_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/presentation/schedule_page/schedule_page.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:pankaj_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application1/widgets/custom_bottom_bar.dart';

class Schedule1Screen extends GetWidget<Schedule1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 20,
                right: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomAppBar(
                    height: getVerticalSize(
                      56.00,
                    ),
                    title: Text(
                      "lbl_schedule".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanSemiBold24.copyWith(
                        height: 1.00,
                      ),
                    ),
                    actions: [
                      Container(
                        height: getVerticalSize(
                          31.00,
                        ),
                        width: getHorizontalSize(
                          20.50,
                        ),
                        margin: getMargin(
                          left: 206,
                          top: 2,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            AppbarImage(
                              height: getVerticalSize(
                                16.00,
                              ),
                              width: getHorizontalSize(
                                4.00,
                              ),
                              svgPath: ImageConstant.imgComponent1WhiteA700,
                              margin: getMargin(
                                left: 16,
                                top: 15,
                              ),
                            ),
                            AppbarImage(
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                17.00,
                              ),
                              svgPath: ImageConstant.imgAlarm,
                              margin: getMargin(
                                right: 3,
                                bottom: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: getHorizontalSize(
                      335.00,
                    ),
                    margin: getMargin(
                      top: 23,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray102,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                    ),
                    child: TabBar(
                      controller: controller.group125Controller,
                      tabs: [
                        Tab(
                          text: "lbl_upcoming".tr,
                        ),
                        Tab(
                          text: "lbl_completed".tr,
                        ),
                        Tab(
                          text: "lbl_canceled".tr,
                        ),
                      ],
                      labelColor: ColorConstant.whiteA700,
                      unselectedLabelColor: ColorConstant.gray901,
                      indicator: BoxDecoration(
                        color: ColorConstant.blue600,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 32,
                    ),
                    height: getVerticalSize(
                      374.00,
                    ),
                    child: TabBarView(
                      controller: controller.group125Controller,
                      children: [
                        SchedulePage(),
                        SchedulePage(),
                        SchedulePage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
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
}
