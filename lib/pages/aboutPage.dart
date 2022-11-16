import 'package:flutter/material.dart';
import 'package:my_fresh_web/widgets/my_text_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyTextWidget(text: "About Page"),
    );
  }
}
