import "package:flutter/material.dart";
import 'package:flutter_portfolio/components/parallax_card_comp.dart';
import 'package:flutter_portfolio/layout/AppResponsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                  tabs: const [
                    Tab(text: "Flutter"),
                    Tab(text: 'React Native'),
                    Tab(text: 'React'),
                    Tab(text: 'Python'),
                  ],
                ),
              ),
              SizedBox(
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
                                              onTap: () => {
                                                    Get.defaultDialog(
                                                        textCancel: "Close",
                                                        titlePadding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 30, 10, 10),
                                                        titleStyle: TextStyle(
                                                            fontSize: 30,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        title: item.title!,
                                                        content: Container(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                        10,
                                                                    horizontal:
                                                                        10),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  child: Image
                                                                      .asset(
                                                                    item.image!,
                                                                    filterQuality:
                                                                        FilterQuality
                                                                            .high,
                                                                    width: height >
                                                                            800
                                                                        ? 360.0
                                                                        : 200,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        10.0),
                                                                child: Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  item.art!,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        20.0,
                                                                    vertical:
                                                                        10),
                                                                child: Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  item.info!,
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  // IconButton(onPressed: (){}, icon: Icon(Icons.goog))
                                                                  item.link !=
                                                                          null
                                                                      ? item.link !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.link)), icon: const FaIcon(FontAwesomeIcons.globe)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                  item.pstore !=
                                                                          null
                                                                      ? item.pstore !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.pstore)), icon: const FaIcon(FontAwesomeIcons.googlePlay)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                  item.appstore !=
                                                                          null
                                                                      ? item.appstore !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.appstore)), icon: const FaIcon(FontAwesomeIcons.appStoreIos)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                  item.github !=
                                                                          null
                                                                      ? item.github !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.github!)), icon: const FaIcon(FontAwesomeIcons.github)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ))
                                                  },
                                              child: AnimationCard(item, width)
                                              // Card(
                                              //   elevation: 5,
                                              //   child: Column(
                                              //     children: [
                                              //       ClipRRect(
                                              //         borderRadius:
                                              //             BorderRadius.circular(8.0),
                                              //         child: Image.asset(
                                              //           item["image"]!,
                                              //         ),
                                              //       ),
                                              //       Divider(),
                                              //       Title(
                                              //           color: cText,
                                              //           child: MyTextWidget(
                                              //               text: item["title"]!)),
                                              //       Padding(
                                              //         padding:
                                              //             const EdgeInsets.all(5.0),
                                              //         child: MyTextWidget(
                                              //           text: item["info"]!,
                                              //           size: 12,
                                              //           color: cTextLight,
                                              //           fontWeight: FontWeight.w300,
                                              //           maxLines: 2,
                                              //         ),
                                              //       ),
                                              //       SizedBox(
                                              //         height: 5,
                                              //       )
                                              //     ],
                                              //   ),
                                              // ),
                                              ),
                                        ))
                                    .toList(),
                              ),
                              const SizedBox(
                                height: 50,
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
                                              onTap: () => {
                                                    Get.defaultDialog(
                                                        textCancel: "Close",
                                                        titlePadding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 30, 10, 10),
                                                        titleStyle: TextStyle(
                                                            fontSize: 30,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        title: item.title!,
                                                        content: Container(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                        10,
                                                                    horizontal:
                                                                        10),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  child: Image
                                                                      .asset(
                                                                    item.image!,
                                                                    filterQuality:
                                                                        FilterQuality
                                                                            .high,
                                                                    width: height >
                                                                            800
                                                                        ? 360.0
                                                                        : 200,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        10.0),
                                                                child: Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  item.art!,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        20.0,
                                                                    vertical:
                                                                        10),
                                                                child: Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  item.info!,
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  // IconButton(onPressed: (){}, icon: Icon(Icons.goog))
                                                                  item.link !=
                                                                          null
                                                                      ? item.link !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.link)), icon: const FaIcon(FontAwesomeIcons.globe)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                  item.pstore !=
                                                                          null
                                                                      ? item.pstore !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.pstore)), icon: const FaIcon(FontAwesomeIcons.googlePlay)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                  item.appstore !=
                                                                          null
                                                                      ? item.appstore !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.appstore)), icon: const FaIcon(FontAwesomeIcons.appStoreIos)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                  item.github !=
                                                                          null
                                                                      ? item.github !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.github!)), icon: const FaIcon(FontAwesomeIcons.github)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ))
                                                  },
                                              child:
                                                  AnimationCard(item, width)),
                                        ))
                                    .toList(),
                              ),
                              const SizedBox(
                                height: 50,
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
                                              onTap: () => {
                                                    Get.defaultDialog(
                                                        textCancel: "Close",
                                                        titlePadding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 30, 10, 10),
                                                        titleStyle: TextStyle(
                                                            fontSize: 30,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        title: item.title!,
                                                        content: Container(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                        10,
                                                                    horizontal:
                                                                        10),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  child: Image
                                                                      .asset(
                                                                    item.image!,
                                                                    filterQuality:
                                                                        FilterQuality
                                                                            .high,
                                                                    width: height >
                                                                            800
                                                                        ? 360.0
                                                                        : 200,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        10.0),
                                                                child: Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  item.art!,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        20.0,
                                                                    vertical:
                                                                        10),
                                                                child: Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  item.info!,
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  // IconButton(onPressed: (){}, icon: Icon(Icons.goog))
                                                                  item.link !=
                                                                          null
                                                                      ? item.link !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.link)), icon: const FaIcon(FontAwesomeIcons.globe)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                  item.pstore !=
                                                                          null
                                                                      ? item.pstore !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.pstore)), icon: const FaIcon(FontAwesomeIcons.googlePlay)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                  item.appstore !=
                                                                          null
                                                                      ? item.appstore !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.appstore)), icon: const FaIcon(FontAwesomeIcons.appStoreIos)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                  item.github !=
                                                                          null
                                                                      ? item.github !=
                                                                              ""
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.all(20.0),
                                                                              child: IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.github!)), icon: const FaIcon(FontAwesomeIcons.github)),
                                                                            )
                                                                          : const SizedBox()
                                                                      : const SizedBox(),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ))
                                                  },
                                              child:
                                                  AnimationCard(item, width)),
                                        ))
                                    .toList(),
                              ),
                              const SizedBox(
                                height: 50,
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
                                            onTap: () => {
                                                  Get.defaultDialog(
                                                      textCancel: "Close",
                                                      titlePadding:
                                                          EdgeInsets.fromLTRB(
                                                              10, 30, 10, 10),
                                                      titleStyle: TextStyle(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      title: item.title!,
                                                      content: Container(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      vertical:
                                                                          10,
                                                                      horizontal:
                                                                          10),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0),
                                                                child:
                                                                    Image.asset(
                                                                  item.image!,
                                                                  filterQuality:
                                                                      FilterQuality
                                                                          .high,
                                                                  width: height >
                                                                          800
                                                                      ? 360.0
                                                                      : 200,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                      10.0),
                                                              child: Text(
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                item.art!,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          20.0,
                                                                      vertical:
                                                                          10),
                                                              child: Text(
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                item.info!,
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                // IconButton(onPressed: (){}, icon: Icon(Icons.goog))
                                                                item.link !=
                                                                        null
                                                                    ? item.link !=
                                                                            ""
                                                                        ? Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(20.0),
                                                                            child:
                                                                                IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.link)), icon: const FaIcon(FontAwesomeIcons.globe)),
                                                                          )
                                                                        : const SizedBox()
                                                                    : const SizedBox(),
                                                                item.pstore !=
                                                                        null
                                                                    ? item.pstore !=
                                                                            ""
                                                                        ? Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(20.0),
                                                                            child:
                                                                                IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.pstore)), icon: const FaIcon(FontAwesomeIcons.googlePlay)),
                                                                          )
                                                                        : const SizedBox()
                                                                    : const SizedBox(),
                                                                item.appstore !=
                                                                        null
                                                                    ? item.appstore !=
                                                                            ""
                                                                        ? Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(20.0),
                                                                            child:
                                                                                IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.appstore)), icon: const FaIcon(FontAwesomeIcons.appStoreIos)),
                                                                          )
                                                                        : const SizedBox()
                                                                    : const SizedBox(),
                                                                item.github !=
                                                                        null
                                                                    ? item.github !=
                                                                            ""
                                                                        ? Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(20.0),
                                                                            child:
                                                                                IconButton(onPressed: () => _launchInBrowser(Uri.parse(item.github!)), icon: const FaIcon(FontAwesomeIcons.github)),
                                                                          )
                                                                        : const SizedBox()
                                                                    : const SizedBox(),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ))
                                                },
                                            child: AnimationCard(item, width)),
                                      ))
                                  .toList(),
                            ),
                            const SizedBox(
                              height: 50,
                            )
                          ],
                        ),
                      ),
                    ),
                  ]))
            ]));
  }
}
