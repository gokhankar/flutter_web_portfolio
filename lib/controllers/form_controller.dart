import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  static FormController instance = Get.find();

  var isHovered = false;
  var email = ''.obs;
  var name = ''.obs;
  var subject = ''.obs;
  var message = ''.obs;

  var colorList = [cMiddleDark, cDark].obs;
  var colorIndex = 1.obs;

  TextEditingController nameTec = TextEditingController();
  TextEditingController subTec = TextEditingController();
  TextEditingController eMailTec = TextEditingController();
  TextEditingController messageTec = TextEditingController();

  sendFormData() {
    var text = 'Name : $name - Subject: $subject - Message : $message';
    print(text);
  }
  // RxnString? errorText = RxnString(null);

  // void submitFunction() {
  // }
}
