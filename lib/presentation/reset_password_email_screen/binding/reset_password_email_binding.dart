import '../controller/reset_password_email_controller.dart';
import 'package:get/get.dart';

class ResetPasswordEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordEmailController());
  }
}
