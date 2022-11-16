import '../controller/profile_controller.dart';
import '../models/healthtracking_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class HealthtrackingItemWidget extends StatelessWidget {
  HealthtrackingItemWidget(this.healthtrackingItemModelObj);

  HealthtrackingItemModel healthtrackingItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          left: 238,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  left: 10,
                  right: 7,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgSettings20X32,
                  height: getVerticalSize(
                    20.00,
                  ),
                  width: getHorizontalSize(
                    32.00,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 8,
                  top: 11,
                  right: 7,
                ),
                child: Text(
                  "lbl_weight".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanSemiBold10,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 7,
              ),
              child: Text(
                "lbl_103lbs".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewayRomanSemiBold16WhiteA700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
