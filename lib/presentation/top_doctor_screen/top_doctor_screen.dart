import '../top_doctor_screen/widgets/top_doctor_item_widget.dart';
import 'controller/top_doctor_controller.dart';
import 'models/top_doctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:pankaj_s_application1/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pankaj_s_application1/widgets/app_bar/custom_app_bar.dart';

class TopDoctorScreen extends GetWidget<TopDoctorController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 7,
                leading: AppbarImage(
                    height: getVerticalSize(15.00),
                    width: getHorizontalSize(7.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(bottom: 3),
                    onTap: onTapArrowleft2),
                centerTitle: true,
                title: AppbarSubtitle3(text: "lbl_top_doctor".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16.00),
                      width: getHorizontalSize(4.00),
                      svgPath: ImageConstant.imgComponent1,
                      margin: getMargin(bottom: 1))
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(
                            left: 24, top: 33, right: 24, bottom: 15),
                        child: Obx(() => ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: controller.topDoctorModelObj.value
                                .topDoctorItemList.length,
                            itemBuilder: (context, index) {
                              TopDoctorItemModel model = controller
                                  .topDoctorModelObj
                                  .value
                                  .topDoctorItemList[index];
                              return TopDoctorItemWidget(model);
                            })))))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
