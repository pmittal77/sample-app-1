import 'controller/onboarding_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';

class OnboardingFourScreen extends GetWidget<OnboardingFourController> {
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 179,
                    right: 24,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgVideocamera,
                    height: getVerticalSize(
                      66.00,
                    ),
                    width: getHorizontalSize(
                      59.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 7,
                    right: 24,
                  ),
                  child: Text(
                    "lbl_helthio".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanBold25,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 45,
                    right: 24,
                  ),
                  child: Text(
                    "msg_let_s_get_start".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanBold22,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    258.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 14,
                    right: 24,
                  ),
                  child: Text(
                    "msg_login_to_enjoy".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtRalewayRomanMedium16.copyWith(
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
                CustomButton(
                  width: 327,
                  text: "lbl_login".tr,
                  margin: getMargin(
                    left: 24,
                    top: 178,
                    right: 24,
                  ),
                ),
                CustomButton(
                  width: 328,
                  text: "lbl_sign_up".tr,
                  margin: getMargin(
                    left: 24,
                    top: 16,
                    right: 23,
                    bottom: 20,
                  ),
                  variant: ButtonVariant.OutlineBlue600,
                  fontStyle: ButtonFontStyle.RalewayRomanSemiBold16Blue600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
