import 'controller/message_history1_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/presentation/message_history_page/message_history_page.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:pankaj_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application1/widgets/custom_bottom_bar.dart';
import 'package:pankaj_s_application1/widgets/custom_floating_button.dart';

class MessageHistory1Screen extends GetWidget<MessageHistory1Controller> {
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
                right: 19,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomAppBar(
                    height: getVerticalSize(
                      56.00,
                    ),
                    title: Text(
                      "lbl_message".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold24.copyWith(
                        height: 1.00,
                      ),
                    ),
                    actions: [
                      Container(
                        height: getVerticalSize(
                          31.00,
                        ),
                        width: getHorizontalSize(
                          22.00,
                        ),
                        margin: getMargin(
                          left: 208,
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
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
                                left: 18,
                                top: 15,
                              ),
                            ),
                            AppbarImage(
                              height: getSize(
                                20.00,
                              ),
                              width: getSize(
                                20.00,
                              ),
                              svgPath: ImageConstant.imgRefresh,
                              margin: getMargin(
                                right: 2,
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
                      right: 1,
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
                          text: "lbl_all".tr,
                        ),
                        Tab(
                          text: "lbl_group".tr,
                        ),
                        Tab(
                          text: "lbl_private".tr,
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
                      left: 1,
                      top: 32,
                    ),
                    height: getVerticalSize(
                      182.00,
                    ),
                    child: TabBarView(
                      controller: controller.group125Controller,
                      children: [
                        MessageHistoryPage(),
                        MessageHistoryPage(),
                        MessageHistoryPage(),
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
        floatingActionButton: CustomFloatingButton(
          height: 55,
          width: 55,
          variant: FloatingButtonVariant.OutlineBlack90019,
          child: CommonImageView(
            svgPath: ImageConstant.imgUser55X55,
            height: getVerticalSize(
              27.50,
            ),
            width: getHorizontalSize(
              27.50,
            ),
          ),
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
