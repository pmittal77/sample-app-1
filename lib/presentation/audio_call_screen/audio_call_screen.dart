import 'controller/audio_call_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/custom_floating_button.dart';
import 'package:pankaj_s_application1/widgets/custom_icon_button.dart';

class AudioCallScreen extends GetWidget<AudioCallController> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: size.height,
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CommonImageView(
                            imagePath: ImageConstant.imgImage10,
                            height: getVerticalSize(
                              812.00,
                            ),
                            width: getHorizontalSize(
                              375.00,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: AppDecoration.fillGray40033,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 85,
                                    top: 324,
                                    right: 85,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        57.50,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath:
                                          ImageConstant.imgImage10115X115,
                                      height: getSize(
                                        115.00,
                                      ),
                                      width: getSize(
                                        115.00,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 85,
                                    top: 170,
                                    right: 85,
                                  ),
                                  child: Text(
                                    "lbl_00_05_24".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanMedium14WhiteA700,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 85,
                                    top: 24,
                                    right: 84,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomIconButton(
                                        height: 52,
                                        width: 52,
                                        variant:
                                            IconButtonVariant.FillGray40087,
                                        shape: IconButtonShape.CircleBorder26,
                                        padding: IconButtonPadding.PaddingAll15,
                                        child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgVideocamera52X52,
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 52,
                                        width: 52,
                                        variant:
                                            IconButtonVariant.FillGray40087,
                                        shape: IconButtonShape.CircleBorder26,
                                        padding: IconButtonPadding.PaddingAll15,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgMicrophone,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 85,
                                    top: 57,
                                    right: 85,
                                  ),
                                  child: CommonImageView(
                                    svgPath:
                                        ImageConstant.imgArrowleftWhiteA700,
                                    height: getVerticalSize(
                                      5.00,
                                    ),
                                    width: getHorizontalSize(
                                      11.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 85,
                                    top: 8,
                                    right: 85,
                                    bottom: 25,
                                  ),
                                  child: Text(
                                    "msg_swipe_back_to_m".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanMedium14WhiteA700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 52,
          width: 52,
          child: CommonImageView(
            svgPath: ImageConstant.imgVectorWhiteA70052X52,
            height: getVerticalSize(
              26.00,
            ),
            width: getHorizontalSize(
              26.00,
            ),
          ),
        ),
      ),
    );
  }
}
