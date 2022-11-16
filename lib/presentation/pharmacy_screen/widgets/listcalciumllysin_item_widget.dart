import '../controller/pharmacy_controller.dart';
import '../models/listcalciumllysin_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListcalciumllysinItemWidget extends StatelessWidget {
  ListcalciumllysinItemWidget(this.listcalciumllysinItemModelObj,
      {this.onTapImgPlusThree});

  ListcalciumllysinItemModel listcalciumllysinItemModelObj;

  var controller = Get.find<PharmacyController>();

  VoidCallback? onTapImgPlusThree;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 17,
        ),
        decoration: AppDecoration.outlineBluegray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(
                left: 26,
                top: 18,
                right: 25,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    34.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgCalciumllysin,
                  height: getVerticalSize(
                    68.00,
                  ),
                  width: getHorizontalSize(
                    66.00,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 7,
                top: 11,
                right: 8,
                bottom: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_obh_combi".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRomanSemiBold14Gray901,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_75ml".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRomanMedium12Gray500,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: getHorizontalSize(
                              74.00,
                            ),
                            margin: getMargin(
                              top: 5,
                              right: 2,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "lbl_9_99".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRalewayRomanSemiBold14Black900,
                                ),
                                Container(
                                  height: getVerticalSize(
                                    9.00,
                                  ),
                                  width: getHorizontalSize(
                                    29.00,
                                  ),
                                  margin: getMargin(
                                    top: 4,
                                    bottom: 3,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 1,
                                            right: 10,
                                          ),
                                          child: Text(
                                            "lbl_10_99".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanSemiBold8,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                          width: getHorizontalSize(
                                            29.00,
                                          ),
                                          margin: getMargin(
                                            top: 10,
                                            bottom: 3,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.gray701,
                                          ),
                                        ),
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
                  Padding(
                    padding: getPadding(
                      top: 42,
                    ),
                    child: InkWell(
                      onTap: () {
                        onTapImgPlusThree!();
                      },
                      child: CommonImageView(
                        svgPath: ImageConstant.imgPlus,
                        height: getSize(
                          18.00,
                        ),
                        width: getSize(
                          18.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
