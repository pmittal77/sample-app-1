import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue600,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Padding(
                          padding: getPadding(left: 103, top: 259, right: 103),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgVectorWhiteA700,
                              height: getVerticalSize(130.00),
                              width: getHorizontalSize(117.00))),
                      Padding(
                          padding: getPadding(
                              left: 103, top: 20, right: 100, bottom: 20),
                          child: Text("lbl_helthio".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanBold50))
                    ])))));
  }
}
