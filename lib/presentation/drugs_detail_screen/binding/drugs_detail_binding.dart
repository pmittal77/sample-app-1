import '../controller/drugs_detail_controller.dart';
import 'package:get/get.dart';

class DrugsDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrugsDetailController());
  }
}
