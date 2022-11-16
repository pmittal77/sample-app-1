import '../controller/find_doctors_controller.dart';
import '../models/find_doctors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FindDoctorsItemWidget extends StatelessWidget {
  FindDoctorsItemWidget(this.findDoctorsItemModelObj);

  FindDoctorsItemModel findDoctorsItemModelObj;

  var controller = Get.find<FindDoctorsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: ColorConstant.blue51,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Container(
              height: getVerticalSize(
                56.00,
              ),
              width: getHorizontalSize(
                64.00,
              ),
              decoration: AppDecoration.outlineBlack90019.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 13,
                        right: 16,
                        bottom: 13,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSettings,
                        height: getVerticalSize(
                          29.00,
                        ),
                        width: getHorizontalSize(
                          32.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 5,
                top: 12,
                right: 6,
              ),
              child: Text(
                "lbl_covid_19".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewayRomanRegular13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
