import '../controller/articles_controller.dart';
import '../models/listrectangle460_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle460ItemWidget extends StatelessWidget {
  Listrectangle460ItemWidget(this.listrectangle460ItemModelObj);

  Listrectangle460ItemModel listrectangle460ItemModelObj;

  var controller = Get.find<ArticlesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 15,
        ),
        decoration: AppDecoration.outlineBluegray501.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: getVerticalSize(
                  87.00,
                ),
                width: getHorizontalSize(
                  138.00,
                ),
                margin: getMargin(
                  left: 8,
                  top: 10,
                  right: 8,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgRectangle460,
                          height: getVerticalSize(
                            87.00,
                          ),
                          width: getHorizontalSize(
                            138.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: getPadding(
                          left: 10,
                          top: 6,
                          right: 9,
                          bottom: 10,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgBookmark,
                          height: getVerticalSize(
                            12.00,
                          ),
                          width: getHorizontalSize(
                            10.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 8,
                top: 10,
                right: 10,
              ),
              padding: getPadding(
                left: 5,
                top: 3,
                right: 7,
                bottom: 3,
              ),
              decoration: AppDecoration.txtFillBluegray50.copyWith(
                borderRadius: BorderRadiusStyle.txtRoundedBorder2,
              ),
              child: Text(
                "lbl_covid_19".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewayRomanMedium9,
              ),
            ),
            Container(
              width: getHorizontalSize(
                101.00,
              ),
              margin: getMargin(
                left: 8,
                top: 8,
                right: 10,
              ),
              child: Text(
                "msg_comparing_the_a".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewayRomanSemiBold12Gray901.copyWith(
                  height: 1.33,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 8,
                top: 8,
                right: 10,
                bottom: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "lbl_jun_12_2021".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanMedium9Gray500,
                  ),
                  Container(
                    height: getSize(
                      2.00,
                    ),
                    width: getSize(
                      2.00,
                    ),
                    margin: getMargin(
                      left: 9,
                      top: 5,
                      bottom: 3,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray500,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                    ),
                    child: Text(
                      "lbl_6_min_read".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanMedium9,
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
