import 'package:flutter/material.dart';
import 'package:my_fresh_web/widgets/my_text_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyTextWidget(text: "Contact Page"),
    );
  }
}
