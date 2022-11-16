import '../controller/schedule1_controller.dart';
import 'package:get/get.dart';

class Schedule1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Schedule1Controller());
  }
}
