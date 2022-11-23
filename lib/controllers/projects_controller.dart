import 'package:flutter_portfolio/controllers/navigation_controller.dart';
import 'package:get/get.dart';

class ProjectsController extends GetxController {
  static ProjectsController instance = Get.find();

  var city = ''.obs;
  var pythonProjects = [
    {
      "title": "Practice Python",
      "info":
          "These files were the practices which I made  to learn Python, when I started to learn coding. This is a workout for me to practice Ptyhon with the examples from: https://www.practicepython.org/",
      "link": null,
      "github": "https://github.com/gokhankar/practicepython",
      "image": "assets/images/python.png"
    },
    {
      "title": "Python Principles",
      "info": "Some workouts on Python from: https://pythonprinciples.com/",
      "link": null,
      "github": "https://github.com/gokhankar/python_principles",
      "image": "assets/images/python.png"
    },
    {
      "title": "Python Phonebook",
      "info":
          "Several phonebooks with different specialities written in Python.",
      "link": null,
      "github": "https://github.com/gokhankar/python-phonebook",
      "image": "assets/images/python.png"
    },
  ].obs;

  var flutterProjects = [
    {
      "title": "Bulls&Cows Game",
      "info":
          "A fun math game. Guess my number. Train your mind.\nI have a number from 1000 to 9999. All digits are different. Let's guess. If your guess has digits in the right place, these are bulls. If digits are in my number but in the wrong place, these are cows.\nFor example, if my number is 1234 and you guess 1024, it means 2 bulls and a cow because 1 and 4 are in the right place but 2 is in the number but its place is wrong.\nHurry up, try to guess my number fast.",
      "link":
          "https://play.google.com/store/apps/details?id=com.ahbapps.bulls_and_cows_game",
      "github": null,
      "image": "assets/images/bulls.webp"
    },
    {
      "title": "Flutter Weather",
      "info":
          "it is a simple flutter app that is coded to make some workouts on flutter.",
      "link":
          "https://play.google.com/store/apps/details?id=com.ahbapps.weather_forecast_flutter",
      "github": null,
      "image": "assets/images/weather.webp"
    },
  ].obs;
  var reactNativeProjects = [
    {
      "title": "Countries App",
      "info":
          "A small application that can be found plenty of information, capitals, population, area, telephone codes, alpha codes of all 250 countries of the world. Plus, you can play Capitals Game and make some fun with this simple application. Enjoy it!",
      "link":
          "https://play.google.com/store/apps/details?id=com.gokhank.myCountriesApp",
      "github": null,
      "image": "assets/images/countries.webp"
    },
    {
      "title": "Şavak Haber",
      "info":
          "Savak News is at your service on Google Play Store to get news from savaks all over the world and to follow our writers' articles... Savak Family Tree database is being prepared, it will be at your service soon in our application.",
      "link": "https://play.google.com/store/apps/details?id=com.SavakHaber",
      "github": null,
      "image": "assets/images/savak.webp"
    },
  ].obs;
  var reactProjects = [
    {
      "title": "Personal Homepage",
      "image": "assets/images/oldhomepage.jpeg",
      "info":
          "It is a funny abstract design website that includes many information about me.",
      "link": "https://gokhankaracaygatsby.netlify.app/",
      "github": "https://github.com/gokhankar/personalWepPage",
    },
    {
      "title": " Personal TravelBlog",
      "image": "assets/images/travel.jpeg",
      "info":
          "It is a travel blog where you can find good information about many europe cities.",
      "link": "https://gokhankaracaytravel.netlify.app/",
      "github": "https://github.com/gokhankar/travel-blog",
    },
    {
      "title": " Personal Projects Page",
      "image": "assets/images/projects.jpeg",
      "info": "A website prepared to present people my projects. ",
      "link": "https://gokhankaracayprojects.netlify.app/",
      "github": "https://github.com/gokhankar/",
    },
    {
      "title": " SavakHaber Web Application",
      "info":
          "A news application that is coded for a large Savak Family in Turkey. ",
      "link": "http://161.35.247.218:3000",
      "github": null,
      "image": "assets/images/savakweb.jpeg",
    },
    {
      "title": " Cows And Bulls Game",
      "info":
          "A funny number guess game which is made as a web app with pure React. That means no Redux and Hooks used.",
      "link": "https://gokhankaracaygame.netlify.app/",
      "github": "https://github.com/gokhankar/CowsAndBullsGame",
      "image": "assets/images/cbweb.jpeg",
    },
    {
      "title": " Simple ToDo App",
      "info":
          "That is a simple todo app, written with React and Mobx, by Gökhan Karaçay.",
      "link": "https://gokhankaracaytodoapp.netlify.app/",
      "github": "https://github.com/gokhankar/todo_list",
      "image": "assets/images/todo.jpeg",
    },
  ].obs;

  // RxnString? errorText = RxnString(null);

  // void submitFunction() {
  // }
}
