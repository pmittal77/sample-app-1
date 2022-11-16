import '/core/app_export.dart';
import 'package:pankaj_s_application1/presentation/my_cart_screen/models/my_cart_model.dart';

class MyCartController extends GetxController {
  Rx<MyCartModel> myCartModelObj = MyCartModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
