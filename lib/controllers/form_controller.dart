import 'package:get/get.dart';

class FormController extends GetxController {
  static FormController instance = Get.find();

  var city = ''.obs;
  var email = ''.obs;
  var name = ''.obs;
  var obscure = true.obs;
  var obscure2 = true.obs;
  var password = ''.obs;
  var password2 = ''.obs;
  var rememberMe = false.obs;
  var selectedCity = ''.obs;

  // RxnString? errorText = RxnString(null);

  // void submitFunction() {
  // }
}
