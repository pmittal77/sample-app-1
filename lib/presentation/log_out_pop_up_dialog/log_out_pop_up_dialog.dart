import 'controller/log_out_pop_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class LogOutPopUpDialog extends StatelessWidget {
  LogOutPopUpDialog(this.controller);

  LogOutPopUpController controller;

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
              left: 32,
              top: 52,
              right: 32,
            ),
            color: ColorConstant.red50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder51,
            ),
            child: Container(
              height: getSize(
                103.00,
              ),
              width: getSize(
                103.00,
              ),
              decoration: AppDecoration.fillRed50.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder51,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 29,
                        top: 30,
                        right: 30,
                        bottom: 29,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgMinimize,
                        height: getSize(
                          43.00,
                        ),
                        width: getSize(
                          43.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              243.00,
            ),
            margin: getMargin(
              left: 32,
              top: 57,
              right: 32,
            ),
            child: Text(
              "msg_are_you_sure_to".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtInterBold20,
            ),
          ),
          CustomButton(
            width: 263,
            text: "lbl_log_out".tr,
            margin: getMargin(
              left: 32,
              top: 32,
              right: 32,
            ),
            variant: ButtonVariant.FillRedA200,
          ),
          Padding(
            padding: getPadding(
              left: 32,
              top: 20,
              right: 32,
              bottom: 20,
            ),
            child: Text(
              "lbl_cancel".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold16Blue600,
            ),
          ),
        ],
      ),
    );
  }
}
