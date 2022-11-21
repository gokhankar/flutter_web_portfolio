import "package:flutter/material.dart";
import 'package:flutter_portfolio/constants/controllers.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/widgets/gradient_button.dart';
import 'package:flutter_portfolio/widgets/my_text_widget.dart';
import 'package:flutter_portfolio/widgets/text_form_field_widget.dart';
import 'package:get/get.dart';

import 'package:flutter_portfolio/controllers/form_controller.dart';

class MessageForm extends StatelessWidget {
  MessageForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: 340,
        child: Column(
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
              hintText: 'Name',
              keyboardType: TextInputType.name,
              onChanged: (value) {
                formController.email.value = value;
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
              hintText: 'Subject',
              keyboardType: TextInputType.name,
              onChanged: (value) {
                formController.email.value = value;
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
              hintText: '\n  Your message',
              maxLines: 6,
              keyboardType: TextInputType.name,
              onChanged: (value) {
                formController.email.value = value;
              },
              // prefixIcon: const Icon(Icons.message),
              textInputAction: TextInputAction.next,
              // validator: Validators.compose([
              //   Validators.required('Zorunlu alan'),
              //   Validators.email('Geçerli bir email giriniz'),
              // ]),
            ),
            SizedBox(height: 20),
            GradientButton(
              title: "SEND MESSAGE",
              smallScreenheight: 50,
            ),
            SizedBox(height: 50),
          ],
        ));
  }
}
