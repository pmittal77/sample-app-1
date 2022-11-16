import '../controller/reset_password_phone_controller.dart';
import 'package:get/get.dart';

class ResetPasswordPhoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordPhoneController());
  }
}
