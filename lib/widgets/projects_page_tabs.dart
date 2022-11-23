import "package:flutter/material.dart";
import 'package:flutter_portfolio/layout/AppResponsive.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

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
    Future<void> _launchInBrowser(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

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
              labelPadding: EdgeInsets.only(left: 5, right: 20, top: 0),
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
                  child: SingleChildScrollView(
                    child: Container(
                      width: width - 100,
                      child: Column(
                        children: [
                          GridView(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: width >= 900
                                  ? 4
                                  : (900 > width && width >= 600)
                                      ? 3
                                      : (600 > width && width >= 400)
                                          ? 2
                                          : 1,
                            ),
                            shrinkWrap: true,
                            children: projectsController.flutterProjects
                                .map((item) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () => _launchInBrowser(Uri.parse(
                                            item["link"] ??
                                                item["github"].toString())),
                                        child: Card(
                                          elevation: 5,
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  item["image"]!,
                                                ),
                                              ),
                                              Divider(),
                                              Title(
                                                  color: cText,
                                                  child: MyTextWidget(
                                                      text: item["title"]!)),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: MyTextWidget(
                                                  text: item["info"]!,
                                                  size: 12,
                                                  color: cTextLight,
                                                  fontWeight: FontWeight.w300,
                                                  maxLines: 2,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Container(
                      width: width - 100,
                      child: Column(
                        children: [
                          GridView(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: width >= 900
                                  ? 4
                                  : (900 > width && width >= 600)
                                      ? 3
                                      : (600 > width && width >= 400)
                                          ? 2
                                          : 1,
                            ),
                            shrinkWrap: true,
                            children: projectsController.reactNativeProjects
                                .map((item) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () => _launchInBrowser(Uri.parse(
                                            item["link"] ??
                                                item["github"].toString())),
                                        child: Card(
                                          elevation: 5,
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  item["image"]!,
                                                ),
                                              ),
                                              Divider(),
                                              Title(
                                                  color: cText,
                                                  child: MyTextWidget(
                                                      text: item["title"]!)),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: MyTextWidget(
                                                  text: item["info"]!,
                                                  size: 12,
                                                  color: cTextLight,
                                                  fontWeight: FontWeight.w300,
                                                  maxLines: 2,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Container(
                      width: width - 100,
                      child: Column(
                        children: [
                          GridView(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: width >= 900
                                  ? 4
                                  : (900 > width && width >= 600)
                                      ? 3
                                      : (600 > width && width >= 400)
                                          ? 2
                                          : 1,
                            ),
                            shrinkWrap: true,
                            children: projectsController.reactProjects
                                .map((item) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () => _launchInBrowser(Uri.parse(
                                            item["link"] ??
                                                item["github"].toString())),
                                        child: Card(
                                          elevation: 5,
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  item["image"]!,
                                                ),
                                              ),
                                              Divider(),
                                              Title(
                                                  color: cText,
                                                  child: MyTextWidget(
                                                      text: item["title"]!)),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: MyTextWidget(
                                                  text: item["info"]!,
                                                  size: 12,
                                                  color: cTextLight,
                                                  fontWeight: FontWeight.w300,
                                                  maxLines: 2,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    width: width - 100,
                    child: Column(
                      children: [
                        GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: width >= 900
                                ? 4
                                : (900 > width && width >= 600)
                                    ? 3
                                    : (600 > width && width >= 400)
                                        ? 2
                                        : 1,
                          ),
                          shrinkWrap: true,
                          children: projectsController.pythonProjects
                              .map((item) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () => _launchInBrowser(Uri.parse(
                                          item["link"] ??
                                              item["github"].toString())),
                                      child: Card(
                                        elevation: 5,
                                        child: Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                item["image"]!,
                                              ),
                                            ),
                                            Divider(),
                                            Title(
                                                color: cText,
                                                child: MyTextWidget(
                                                    text: item["title"]!)),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
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
