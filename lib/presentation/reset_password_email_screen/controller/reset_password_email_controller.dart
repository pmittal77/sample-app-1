import '/core/app_export.dart';
import 'package:pankaj_s_application1/presentation/reset_password_email_screen/models/reset_password_email_model.dart';
import 'package:flutter/material.dart';

class ResetPasswordEmailController extends GetxController {
  TextEditingController emailOneController = TextEditingController();

  Rx<ResetPasswordEmailModel> resetPasswordEmailModelObj =
      ResetPasswordEmailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailOneController.dispose();
  }
}
