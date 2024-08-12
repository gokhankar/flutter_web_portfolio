// To parse this JSON data, do
//
//     final artikel = artikelFromJson(jsonString);

import 'dart:convert';

Artikel artikelFromJson(String str) => Artikel.fromJson(json.decode(str));

String artikelToJson(Artikel data) => json.encode(data.toJson());

class Artikel {
  String? title;
  String? type;
  String? art;
  String? info;
  dynamic link;
  dynamic pstore;
  dynamic appstore;
  String? github;
  String? image;

  Artikel({
    this.title,
    this.type,
    this.art,
    this.info,
    this.link,
    this.pstore,
    this.appstore,
    this.github,
    this.image,
  });

  factory Artikel.fromJson(Map<String, dynamic> json) => Artikel(
        title: json["title"],
        type: json["type"],
        art: json["art"],
        info: json["info"],
        link: json["link"],
        pstore: json["pstore"],
        appstore: json["appstore"],
        github: json["github"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "type": type,
        "art": art,
        "info": info,
        "link": link,
        "pstore": pstore,
        "appstore": appstore,
        "github": github,
        "image": image,
      };
}
