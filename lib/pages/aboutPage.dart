import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/my_text_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyTextWidget(text: "About Page"),
    );
  }
}
