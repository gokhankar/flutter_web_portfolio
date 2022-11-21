import "package:flutter/material.dart";
import 'package:flutter_portfolio/layout/AppResponsive.dart';
import 'package:get/get.dart';

import 'package:flutter_portfolio/constants/controllers.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/controllers/projects_controller.dart';
import 'package:flutter_portfolio/widgets/my_text_widget.dart';

class ProjectsPageTabs extends StatelessWidget {
  const ProjectsPageTabs({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(ProjectsController());
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
        length: 4, // length of tabs
        initialIndex: 0,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            child: TabBar(
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 0,
                    color: cLight,
                  ),
                  insets: EdgeInsets.only(left: 0, right: 8, bottom: 4)),
              unselectedLabelColor: cTextLight,
              labelColor: cMiddleDark,
              isScrollable: true,
              labelPadding: EdgeInsets.only(left: 0, right: 20),
              tabs: [
                Tab(text: "Flutter"),
                Tab(text: 'React Native'),
                Tab(text: 'React'),
                Tab(text: 'Python'),
              ],
            ),
          ),
          Container(
              height: height - 200, //height of TabBarView
              // decoration: BoxDecoration(
              //     border:
              //         Border(top: BorderSide(color: Colors.grey, width: 0.5))),
              child: TabBarView(children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Flutter Projects',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text('React Native',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                Container(
                  child: Text('React',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                SingleChildScrollView(
                  child: Container(
                    width: width - 100,
                    child: Column(
                      children: [
                        Text('Python',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          shrinkWrap: true,
                          children: projectsController.pythonProjects
                              .map((item) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      elevation: 5,
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              item["image"]!,
                                              width: 150,
                                              height: 100,
                                            ),
                                          ),
                                          Divider(),
                                          Title(
                                              color: cText,
                                              child: MyTextWidget(
                                                  text: item["title"]!)),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: MyTextWidget(
                                              text: item["info"]!,
                                              size: 12,
                                              color: cTextLight,
                                              fontWeight: FontWeight.w300,
                                              maxLines: 2,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ))
                              .toList(),
                        )
                      ],
                    ),
                  ),
                ),
              ]))
        ]));
  }
}
