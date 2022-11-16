import 'controller/sign_up_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class SignUpSuccessDialog extends StatelessWidget {
  SignUpSuccessDialog(this.controller);

  SignUpSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              left: 24,
              top: 49,
              right: 24,
            ),
            color: ColorConstant.gray50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder51,
            ),
            child: Container(
              height: getSize(
                102.00,
              ),
              width: getSize(
                102.00,
              ),
              decoration: AppDecoration.fillGray50.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder51,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 30,
                        top: 35,
                        right: 29,
                        bottom: 34,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            3.00,
                          ),
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgCheckmark31X41,
                          height: getVerticalSize(
                            31.00,
                          ),
                          width: getHorizontalSize(
                            41.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 42,
              right: 24,
            ),
            child: Text(
              "lbl_success".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewayRomanBold20,
            ),
          ),
          Container(
            width: getHorizontalSize(
              181.00,
            ),
            margin: getMargin(
              left: 24,
              top: 16,
              right: 24,
            ),
            child: Text(
              "msg_your_account_ha".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtRalewayRomanRegular16.copyWith(
                letterSpacing: 0.50,
              ),
            ),
          ),
          CustomButton(
            width: 279,
            text: "lbl_login".tr,
            margin: getMargin(
              left: 24,
              top: 24,
              right: 24,
              bottom: 20,
            ),
          ),
        ],
      ),
    );
  }
}
