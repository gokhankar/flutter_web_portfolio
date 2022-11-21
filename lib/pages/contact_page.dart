import 'package:flutter/material.dart';

import 'package:flutter_portfolio/layout/AppResponsive.dart';
import 'package:flutter_portfolio/widgets/address_widget.dart';
import 'package:flutter_portfolio/widgets/message_form.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        child: AppResponsive.isSmallScreen(context)
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    MessageForm(),
                    AddressWidget()
                  ],
                ),
              )
            : SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        MessageForm(),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        AddressWidget()
                      ],
                    )
                  ],
                ),
              ));
  }
}
