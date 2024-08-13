import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class FormController extends GetxController
    with GetSingleTickerProviderStateMixin {
  static FormController instance = Get.find();
  late AnimationController controller;
  var hasCallSupport = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
      hasCallSupport.value = result;
    });
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 2500,
      ),
    );
  }

  var isHovered = false;
  var email = ''.obs;
  var name = ''.obs;
  var subject = ''.obs;
  var message = ''.obs;
  var link = 'https://formspree.io/f/mbjpqooe'.obs;
  var errorMessage = ''.obs;
  var errorMessageColor = Colors.red.obs;
  var isLoading = false;

  var colorList = [cMiddleDark, cDark].obs;
  var colorIndex = 1.obs;

  TextEditingController nameTec = TextEditingController();
  TextEditingController subTec = TextEditingController();
  TextEditingController eMailTec = TextEditingController();
  TextEditingController messageTec = TextEditingController();

  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  void sendEmail(email) async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: encodeQueryParameters(<String, String>{
        'subject': "Hi Gökhan",
      }),
    );
    await launchUrl(emailLaunchUri);
  }

  sendFormData() {
    if (email.value == "") {
      errorMessage.value = "Sorry but Email field cannot be empty";
      errorMessageColor.value = Colors.red;
    } else {
      if (message.value == "") {
        errorMessage.value = "Sorry but message field cannot be empty";
        errorMessageColor.value = Colors.red;
      } else {
        postJsonWithoutHeaderToken();
      }
    }
  }

  Future postJsonWithoutHeaderToken() async {
    isLoading = true;
    var dio = Dio();
    dio.options.headers['content-Type'] = 'application/json';
    try {
      var jsonData = {
        "email": "${email.value}",
        "message": "Name : $name - Subject: $subject - Message : $message",
      };
      // print(isLoading);
      final response = await dio.post(link.value,
          data: jsonEncode(jsonData),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));

      if (kDebugMode) {
        print('postFileStatusCode:  ${response.statusCode}');
      }

      if (kDebugMode) {
        log('postFileDatas:  ${json.encode(response.data)}');
      }

      if (response.statusCode == 200) {
        errorMessage.value = "Your message was sent successfully";
        errorMessageColor.value = Colors.green;

        return response.data;
      }
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e.response?.data);
      }
      if (e.response != null) {
        errorMessage.value = 'Email format error';
        errorMessageColor.value = Colors.red;
      } else {
        errorMessage.value = 'Sorry! An unexpected error occured';
        errorMessageColor.value = Colors.red;
      }
    } finally {
      await Future.delayed(Duration(seconds: 2))
          .then((value) => {isLoading = false});
    }
  }

  openLinkedinPage() {
    launchInBrowser(Uri.parse(
        "https://docs.google.com/document/d/1W9TgmiXQVEdJNf_HLLRJylJK224BlYJS/edit?usp=sharing&ouid=110831171369223298060&rtpof=true&sd=true"));
  }
}
