import "package:flutter/material.dart";
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/widgets/gradient_button.dart';
import 'package:flutter_portfolio/widgets/my_text_widget.dart';
import 'package:flutter_portfolio/widgets/text_form_field_widget.dart';
import 'package:get/get.dart';

import 'package:flutter_portfolio/controllers/form_controller.dart';

class AddressWidget extends StatelessWidget {
  AddressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 340,
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.home_rounded),
              title: MyTextWidget(
                text: "Turkey, Sinop, Boyabat",
                size: 14,
                color: cText,
                fontWeight: FontWeight.bold,
              ),
              subtitle: MyTextWidget(
                text: "57700 Martı St. 21",
                size: 12,
                color: cTextLight,
                fontWeight: FontWeight.w300,
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone_android),
              title: MyTextWidget(
                text: "+90 532 400 3554",
                size: 14,
                color: cText,
                fontWeight: FontWeight.bold,
              ),
              subtitle: MyTextWidget(
                text: "Whatsapp prefered",
                size: 12,
                color: cTextLight,
                fontWeight: FontWeight.w300,
              ),
            ),
            ListTile(
              leading: Icon(Icons.mail_rounded),
              title: MyTextWidget(
                text: "gokhankaracay@gmail.com",
                size: 14,
                color: cText,
                fontWeight: FontWeight.bold,
              ),
              subtitle: MyTextWidget(
                text: "Send me email",
                size: 12,
                color: cTextLight,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ));
  }
}
