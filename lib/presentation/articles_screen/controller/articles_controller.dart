import '/core/app_export.dart';
import 'package:pankaj_s_application1/presentation/articles_screen/models/articles_model.dart';
import 'package:flutter/material.dart';

class ArticlesController extends GetxController {
  TextEditingController searchController = TextEditingController();

  TextEditingController groupNinetyTwoController = TextEditingController();

  TextEditingController groupNinetyController = TextEditingController();

  Rx<ArticlesModel> articlesModelObj = ArticlesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    groupNinetyTwoController.dispose();
    groupNinetyController.dispose();
  }
}
