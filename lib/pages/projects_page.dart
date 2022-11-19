import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/my_text_widget.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyTextWidget(text: "Projects Page"),
    );
  }
}
