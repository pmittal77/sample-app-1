import '../schedule_page/widgets/schedule_item_widget.dart';
import 'controller/schedule_controller.dart';
import 'models/schedule_item_model.dart';
import 'models/schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatelessWidget {
  ScheduleController controller =
      Get.put(ScheduleController(ScheduleModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(
          () => ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount:
                controller.scheduleModelObj.value.scheduleItemList.length,
            itemBuilder: (context, index) {
              ScheduleItemModel model =
                  controller.scheduleModelObj.value.scheduleItemList[index];
              return ScheduleItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
