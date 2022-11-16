import '../controller/articles_controller.dart';
import '../models/listunsplash86rvjm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Listunsplash86rvjmItemWidget extends StatelessWidget {
  Listunsplash86rvjmItemWidget(this.listunsplash86rvjmItemModelObj);

  Listunsplash86rvjmItemModel listunsplash86rvjmItemModelObj;

  var controller = Get.find<ArticlesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 5.0,
        bottom: 5.0,
      ),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 5,
              top: 5,
              bottom: 6,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgUnsplash86rvjm,
                height: getSize(
                  59.00,
                ),
                width: getSize(
                  59.00,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 14,
              bottom: 11,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    205.00,
                  ),
                  child: Text(
                    "msg_the_25_healthie".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanSemiBold12Gray901.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                    right: 10,
                    bottom: 1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "lbl_jun_10_20212".tr,
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
                          left: 8,
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
                          "lbl_5min_read2".tr,
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
          Padding(
            padding: getPadding(
              left: 28,
              top: 13,
              right: 14,
              bottom: 44,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgBookmark12X10,
              height: getVerticalSize(
                12.00,
              ),
              width: getHorizontalSize(
                10.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
