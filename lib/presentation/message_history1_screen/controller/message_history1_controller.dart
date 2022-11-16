import '/core/app_export.dart';
import 'package:pankaj_s_application1/presentation/message_history1_screen/models/message_history1_model.dart';
import 'package:pankaj_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MessageHistory1Controller extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MessageHistory1Model> messageHistory1ModelObj = MessageHistory1Model().obs;

  late TabController group125Controller =
      Get.put(TabController(vsync: this, length: 3));

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
