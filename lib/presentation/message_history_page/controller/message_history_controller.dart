import '/core/app_export.dart';
import 'package:pankaj_s_application1/presentation/message_history_page/models/message_history_model.dart';

class MessageHistoryController extends GetxController {
  MessageHistoryController(this.messageHistoryModelObj);

  Rx<MessageHistoryModel> messageHistoryModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
