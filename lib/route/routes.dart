const RootRoute = "/";

const HomePageDisplayName = "Home";
const HomePageRoute = "/home";
const AboutPageDisplayName = "About";
const AboutPageRoute = "/about";
const ProjectsPageDisplayName = "Projects";
const ProjectsPageRoute = "/projects";
const BlogPageDisplayName = "Blog";
const BlogPageRoute = "/blog";
const ContactPageDisplayName = "Contact";
const ContactPageRoute = "/contact";
const ErrorPageDisplayName = "Error";
const ErrorPageRoute = "/error";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> menuItems = [
  MenuItem(HomePageDisplayName, HomePageRoute),
  MenuItem(AboutPageDisplayName, AboutPageRoute),
  MenuItem(ProjectsPageDisplayName, ProjectsPageRoute),
  MenuItem(BlogPageDisplayName, BlogPageRoute),
  MenuItem(ContactPageDisplayName, ContactPageRoute)
];
