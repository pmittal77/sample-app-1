import '/core/app_export.dart';
import 'package:pankaj_s_application1/presentation/pharmacy_screen/models/pharmacy_model.dart';
import 'package:flutter/material.dart';

class PharmacyController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<PharmacyModel> pharmacyModelObj = PharmacyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
