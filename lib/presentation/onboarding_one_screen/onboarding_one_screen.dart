import 'controller/onboarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
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
                  begin: Alignment(
                    0.5,
                    -3.0616171314629196e-17,
                  ),
                  end: Alignment(
                    0.5,
                    0.9999999999999999,
                  ),
                  colors: [
                    ColorConstant.blue601,
                    ColorConstant.blue700,
                  ],
                ),
              ),
              child: Container(
                height: getVerticalSize(
                  768.00,
                ),
                width: size.width,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(
                          left: 27,
                          top: 51,
                          right: 27,
                          bottom: 51,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.img7xm1,
                          height: getVerticalSize(
                            468.00,
                          ),
                          width: getHorizontalSize(
                            311.00,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: getMargin(
                          top: 10,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL64,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                274.00,
                              ),
                              margin: getMargin(
                                left: 42,
                                top: 38,
                                right: 42,
                              ),
                              child: Text(
                                "msg_consult_only_wi".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRalewayRomanBold22,
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                8.00,
                              ),
                              margin: getMargin(
                                left: 42,
                                top: 16,
                                right: 42,
                              ),
                              child: SmoothIndicator(
                                offset: 0,
                                count: 3,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                  spacing: 4,
                                  activeDotColor: ColorConstant.blue600,
                                  dotColor: ColorConstant.blue100,
                                  dotHeight: getVerticalSize(
                                    8.00,
                                  ),
                                  dotWidth: getHorizontalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 42,
                                top: 54,
                                right: 42,
                                bottom: 36,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 22,
                                      bottom: 18,
                                    ),
                                    child: Text(
                                      "lbl_skip".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular14,
                                    ),
                                  ),
                                  CustomButton(
                                    width: 145,
                                    text: "lbl_next".tr,
                                    fontStyle: ButtonFontStyle.InterSemiBold16,
                                  ),
                                ],
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
          ),
        ),
      ),
    );
  }
}
