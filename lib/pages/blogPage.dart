import 'package:flutter/material.dart';
import 'package:my_fresh_web/widgets/my_text_widget.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyTextWidget(text: "Blog Page"),
    );
  }
}
