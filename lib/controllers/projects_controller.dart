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
      "link": "",
      "github": "https://github.com/gokhankar/practicepython",
      "image": "assets/images/python.png"
    },
    {
      "title": "Python Principles",
      "info": "Some workouts on Python from: https://pythonprinciples.com/",
      "link": "",
      "github": "https://github.com/gokhankar/python_principles",
      "image": "assets/images/python.png"
    },
    {
      "title": "Python Phonebook",
      "info":
          "Several phonebooks with different specialities written in Python.",
      "link": "",
      "github": "https://github.com/gokhankar/python-phonebook",
      "image": "assets/images/python.png"
    },
  ].obs;

  // RxnString? errorText = RxnString(null);

  // void submitFunction() {
  // }
}
