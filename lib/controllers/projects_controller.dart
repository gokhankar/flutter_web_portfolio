import 'package:flutter_portfolio/controllers/navigation_controller.dart';
import 'package:flutter_portfolio/models/artikel_model.dart';
import 'package:get/get.dart';

class ProjectsController extends GetxController {
  static ProjectsController instance = Get.find();

  var city = ''.obs;
  var pythonProjects = [
    Artikel(
        title: "Principles",
        type: "Practice",
        art: "Python",
        info: "Some workouts on Python from: https://pythonprinciples.com/",
        link: null,
        github: "https://github.com/gokhankar/python_principles",
        image: "assets/images/py1.png"),
    Artikel(
        title: "PythonEx",
        type: "Practice",
        art: "Python",
        info:
            "These files were the practices which I made  to learn Python, when I started to learn coding. This is a workout for me to practice Ptyhon with the examples from: https://www.practicepython.org/",
        link: null,
        github: "https://github.com/gokhankar/practicepython",
        image: "assets/images/py2.png"),
    Artikel(
        title: "Phonebook",
        type: "Practice",
        art: "Python",
        info:
            "Several phonebooks with different specialities written in Python.",
        link: null,
        github: "https://github.com/gokhankar/python-phonebook",
        image: "assets/images/py3.png")
  ].obs;

  var flutterProjects = [
    Artikel(
        title: "TherapyApp",
        type: "Application",
        art: "Flutter",
        info:
            "A private application that includes language and cognitive development exercises for people over the age of 65 who are at risk of cognitive decline, dementia, Alzheimer's, Parkinson's, stroke patients and special education students. It is developed with Flutter. It is coded and added to Appstore and Playstore by me. I used Getx as state management in this project. ",
        link: "",
        appstore:
            "https://apps.apple.com/tr/app/beyin-ve-konu%C5%9Fma-terapisi/id6468934791",
        pstore:
            "https://play.google.com/store/apps/details?id=com.therapia.brain_and_speech_coach",
        github: null,
        image: "assets/images/bkt.png"),
    Artikel(
        title: "OpenUp",
        type: "Application",
        art: "Flutter",
        info:
            "An application developed by me in Grows Digital Agency Istanbul, for a company that rents meeting rooms. It is developed with Flutter. Coding process and management in stores made by me. I used Getx as state management in this project. ",
        link: "",
        appstore: "https://apps.apple.com/us/app/open-up-office/id6447128434",
        pstore:
            "https://play.google.com/store/apps/details?id=com.grows.openupoffice",
        github: null,
        image: "assets/images/ouo.png"),
    Artikel(
        title: "Estetik",
        type: "Application",
        art: "Flutter",
        info:
            "An application coded by me in Grows Digital Agency Istanbul for spas, esthetic centers and beauty salons. It is developed with Flutter. Coding process and management in stores made by me. I used Getx as state management in this project. ",
        link: null,
        appstore: null,
        pstore:
            "https://play.google.com/store/apps/details?id=com.grows.seansapp_estetik",
        github: null,
        image: "assets/images/est.png"),
    Artikel(
        title: "Komagene",
        type: "Application",
        art: "Flutter",
        info:
            "It is the Playstore and Appstore application of Komagene company, one of the largest ready-made food sellers in Turkey. This App coded in Grows Digital Agency Istanbul and I worked as a member of the mobile team in coding the application. It is developed with Flutter. I was responsible for coding some new modal pages and connecting App to the API. ",
        link: "",
        appstore:
            "https://apps.apple.com/us/app/komagene-gene-gelsin/id1620339548?platform=iphone",
        pstore:
            "https://play.google.com/store/apps/details?id=com.grows.komagene",
        github: null,
        image: "assets/images/koma.png"),
    Artikel(
        title: "Bulls & Cows",
        type: "Mobile Game",
        art: "Flutter",
        info:
            "A fun math game. Guess my number. Train your mind.\nI have a number from 1000 to 9999. All digits are different. Let's guess. If your guess has digits in the right place, these are bulls. If digits are in my number but in the wrong place, these are cows.\nFor example, if my number is 1234 and you guess 1024, it means 2 bulls and a cow because 1 and 4 are in the right place but 2 is in the number but its place is wrong.\nHurry up, try to guess my number fast.",
        pstore:
            "https://play.google.com/store/apps/details?id=com.ahbapps.bulls_and_cows_game",
        github: null,
        image: "assets/images/bulls.png"),
    Artikel(
        title: "Flutter Weather",
        type: "Weather App",
        art: "Flutter",
        info:
            "it is a simple flutter app that is coded to make some workouts on flutter.",
        pstore:
            "https://play.google.com/store/apps/details?id=com.ahbapps.weather_forecast_flutter",
        github: null,
        image: "assets/images/weather.png"),
  ].obs;
  var reactNativeProjects = [
    Artikel(
        title: "Countries App",
        type: "Info App",
        art: "React Native",
        info:
            "A small application that can be found plenty of information, capitals, population, area, telephone codes, alpha codes of all 250 countries of the world. Plus, you can play Capitals Game and make some fun with this simple application. Enjoy it!",
        pstore:
            "https://play.google.com/store/apps/details?id=com.gokhank.myCountriesApp",
        github: null,
        image: "assets/images/countries.png"),
    Artikel(
        title: "Şavak Haber",
        type: "Press App",
        art: "React Native",
        info:
            "Savak News is at your service on Google Play Store to get news from savaks all over the world and to follow our writers' articles... Savak Family Tree database is being prepared, it will be at your service soon in our application.",
        pstore: "https://play.google.com/store/apps/details?id=com.SavakHaber",
        github: null,
        image: "assets/images/savak.png"),
  ].obs;
  var reactProjects = [
    Artikel(
      title: "Portfolio",
      type: "Web Page",
      art: "React",
      image: "assets/images/oldhomepage.png",
      info:
          "It is a funny abstract design website that includes many information about me.",
      link: "https://gokhankaracaygatsby.netlify.app/",
      github: "https://github.com/gokhankar/personalWepPage",
    ),
    Artikel(
      title: "TravelBlog",
      type: "Web Page",
      art: "React",
      image: "assets/images/travel.png",
      info:
          "It is a travel blog where you can find good information about many europe cities.",
      link: "https://gokhankaracaytravel.netlify.app/",
      github: "https://github.com/gokhankar/travel-blog",
    ),
    Artikel(
      title: "Projects",
      type: "Web Page",
      art: "React",
      image: "assets/images/projects.png",
      info: "A website prepared to present people my projects. ",
      link: "https://gokhankaracayprojects.netlify.app/",
      github: "https://github.com/gokhankar/",
    ),
    Artikel(
      title: "Savak Web",
      type: "Web Page",
      art: "React",
      info:
          "A news application that is coded for a large Savak Family in Turkey. ",
      link: "http://161.35.247.218:3000",
      github: null,
      image: "assets/images/savakweb.png",
    ),
    Artikel(
      title: "Cows & Bulls",
      type: "Web Game",
      art: "Javascript",
      info:
          "A funny number guess game which is made as a web app with pure React. That means no Redux and Hooks used.",
      link: "https://gokhankaracaygame.netlify.app/",
      github: "https://github.com/gokhankar/CowsAndBullsGame",
      image: "assets/images/cbweb.png",
    ),
    Artikel(
      title: "ToDo App",
      type: "Web Page",
      art: "React",
      info:
          "That is a simple todo app, written with React and Mobx, by Gökhan Karaçay.",
      link: "https://gokhankaracaytodoapp.netlify.app/",
      github: "https://github.com/gokhankar/todo_list",
      image: "assets/images/todo.png",
    ),
  ].obs;

  // RxnString? errorText = RxnString(null);

  // void submitFunction() {
  // }
}
