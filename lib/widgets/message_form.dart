import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:flutter_portfolio/constants/controllers.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/widgets/gradient_button.dart';
import 'package:flutter_portfolio/widgets/my_text_widget.dart';
import 'package:flutter_portfolio/widgets/text_form_field_widget.dart';
import 'package:get/get.dart';

import 'package:flutter_portfolio/controllers/form_controller.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MessageForm extends StatelessWidget {
  MessageForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FormController fContx = Get.put(FormController());

    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: 340,
        child: Obx(
          () => fContx.errorMessage.value == ""
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextWidget(
                      text: "CONTACT ME",
                      size: 18,
                      color: cText,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFieldWidget(
                      controller: fContx.nameTec,
                      hintText: 'Name',
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        formController.name.value = value;
                      },
                      prefixIcon: const Icon(Icons.person),
                      textInputAction: TextInputAction.next,
                      // validator: Validators.compose([
                      //   Validators.required('Zorunlu alan'),
                      //   Validators.email('Geçerli bir email giriniz'),
                      // ]),
                    ),
                    SizedBox(height: 10),
                    TextFormFieldWidget(
                      controller: fContx.eMailTec,
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        formController.email.value = value;
                      },
                      prefixIcon: const Icon(Icons.mail),
                      textInputAction: TextInputAction.next,
                      // validator: Validators.compose([
                      //   Validators.required('Zorunlu alan'),
                      //   Validators.email('Geçerli bir email giriniz'),
                      // ]),
                    ),
                    SizedBox(height: 10),
                    TextFormFieldWidget(
                      controller: fContx.subTec,
                      hintText: 'Subject',
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        formController.subject.value = value;
                      },
                      prefixIcon: const Icon(Icons.subject),
                      textInputAction: TextInputAction.next,
                      // validator: Validators.compose([
                      //   Validators.required('Zorunlu alan'),
                      //   Validators.email('Geçerli bir email giriniz'),
                      // ]),
                    ),
                    SizedBox(height: 10),
                    TextFormFieldWidget(
                      controller: fContx.messageTec,
                      hintText: '\n  Your message',
                      maxLines: 6,
                      keyboardType: TextInputType.name,
                      horizontalPadding: 20,
                      verticalPadding: 20,
                      onChanged: (value) {
                        formController.message.value = value;
                      },
                      // prefixIcon: const Icon(Icons.message),
                      textInputAction: TextInputAction.next,
                      // validator: Validators.compose([
                      //   Validators.required('Zorunlu alan'),
                      //   Validators.email('Geçerli bir email giriniz'),
                      // ]),
                    ),
                    SizedBox(height: 20),
                    Obx(
                      () => (fContx.colorIndex.value != 3)
                          ? fContx.isLoading
                              ? SpinKitFadingCube(
                                  color: cLightMid,
                                  size: 50.0,
                                  controller: fContx.controller,
                                )
                              : GradientButton(
                                  colorList: fContx.colorIndex.value == 1
                                      ? [cMiddleDark, cDark]
                                      : [cDark, cMiddleDark],
                                  title: "SEND MESSAGE",
                                  smallScreenheight: 50,
                                  sendMessage: true)
                          : SizedBox(),
                    ),
                    SizedBox(height: 50),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyTextWidget(
                      text: fContx.errorMessage.value,
                      size: 12,
                      color: fContx.errorMessageColor.value,
                      fontWeight: FontWeight.normal,
                    ),
                    GestureDetector(
                      onTap: (() {
                        fContx.email.value = "";
                        fContx.eMailTec.clear();
                        fContx.subject.value = "";
                        fContx.subTec.clear();
                        fContx.name.value = "";
                        fContx.nameTec.clear();
                        fContx.message.value = "";
                        fContx.messageTec.clear();
                        fContx.isLoading = false;
                        fContx.errorMessageColor.value = Colors.red;

                        fContx.errorMessage.value = "";
                      }),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 40),
                        child: MyTextWidget(
                          text: " => Send Message <=",
                          size: 15,
                          color: cMiddleDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
        ));
  }
}
