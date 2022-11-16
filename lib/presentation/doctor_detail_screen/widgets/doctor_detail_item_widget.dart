import '../controller/doctor_detail_controller.dart';
import '../models/doctor_detail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class DoctorDetailItemWidget extends StatelessWidget {
  DoctorDetailItemWidget(this.doctorDetailItemModelObj);

  DoctorDetailItemModel doctorDetailItemModelObj;

  var controller = Get.find<DoctorDetailController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 7.0,
        bottom: 7.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: getPadding(
              left: 25,
              top: 12,
              right: 26,
              bottom: 11,
            ),
            decoration: AppDecoration.txtOutlineGray101.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder15,
            ),
            child: Text(
              "lbl_09_00_am".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewayRomanRegular12,
            ),
          ),
          Container(
            margin: getMargin(
              left: 9,
            ),
            padding: getPadding(
              left: 25,
              top: 12,
              bottom: 11,
            ),
            decoration: AppDecoration.txtOutlineBluegray101.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder15,
            ),
            child: Text(
              "lbl_10_00_am".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewayRomanRegular12Gray901,
            ),
          ),
          Container(
            margin: getMargin(
              left: 9,
            ),
            padding: getPadding(
              left: 25,
              top: 12,
              bottom: 11,
            ),
            decoration: AppDecoration.txtOutlineGray101.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder15,
            ),
            child: Text(
              "lbl_11_00_am".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewayRomanRegular12,
            ),
          ),
        ],
      ),
    );
  }
}
