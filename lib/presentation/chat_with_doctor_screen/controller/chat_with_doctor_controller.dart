import '/core/app_export.dart';
import 'package:pankaj_s_application1/presentation/chat_with_doctor_screen/models/chat_with_doctor_model.dart';
import 'package:flutter/material.dart';

class ChatWithDoctorController extends GetxController {
  TextEditingController typemessageController = TextEditingController();

  Rx<ChatWithDoctorModel> chatWithDoctorModelObj = ChatWithDoctorModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    typemessageController.dispose();
  }
}
