import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/widgets/gradient_button.dart';
import 'package:flutter_portfolio/widgets/my_text_widget.dart';
import 'package:flutter_portfolio/widgets/text_form_field_widget.dart';
import 'package:get/get.dart';

import 'package:flutter_portfolio/controllers/form_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class AddressWidget extends StatelessWidget {
  AddressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FormController fContx = Get.put(FormController());

    // Future<void> _sendmail(Uri url) async {
    //   if (!await (
    //     url,
    //     mode: LaunchMode.externalApplication,
    //   )) {
    //     throw 'Could not launch $url';
    //   }
    // }
    return Container(
        width: 340,
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.home_rounded),
              title: MyTextWidget(
                text: "Germany, Neuss",
                size: 14,
                color: cText,
                fontWeight: FontWeight.bold,
              ),
              subtitle: MyTextWidget(
                text: "Neuss 41460",
                size: 12,
                color: cTextLight,
                fontWeight: FontWeight.w300,
              ),
            ),
            InkWell(
              onTap: () {
                final Uri uri =
                    Uri.parse("https://wa.me/+905324003554?text=Hi Gökhan, ");
                fContx.launchInBrowser(uri);
              },
              child: ListTile(
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
            ),
            InkWell(
              onTap: (() {
                fContx.sendEmail("gokhankaracay@gmail.com");
              }),
              child: ListTile(
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
            ),
            SizedBox(
              height: 50,
            )
          ],
        ));
  }
}
