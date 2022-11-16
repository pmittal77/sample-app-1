import '../controller/message_history1_controller.dart';
import 'package:get/get.dart';

class MessageHistory1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageHistory1Controller());
  }
}
